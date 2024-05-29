import isel.leic.utils.Time

object KBD {
    const val NONE = 0
    private const val ACK_DELAY = 125L
    private const val DVAL_MASK = 0x10
    private const val ACK_MASK = 0x80
    private const val K_MASK = 0x0F
    private const val KEY_MAPPING = "147*2580369#"



    fun init() {
        HAL.clrBits(ACK_MASK)
    }

    fun getKey(): Char {
        val dVal = HAL.isBit(DVAL_MASK)
        if (!dVal) return NONE.toChar()
        val key = HAL.readBits(K_MASK)
        return KEY_MAPPING.getOrNull(key).also {
            HAL.setBits(ACK_MASK)
            Time.sleep(ACK_DELAY)
            HAL.clrBits(ACK_MASK)
        } ?: NONE.toChar()
    }

    fun waitKey(timeout: Long): Char {
        val initialTime = Time.getTimeInMillis()
        while ((Time.getTimeInMillis() - initialTime) < timeout) {
            if (HAL.isBit(DVAL_MASK)) return getKey()
        }
        return NONE.toChar()
    }
}
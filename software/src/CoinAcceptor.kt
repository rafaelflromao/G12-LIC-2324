import isel.leic.utils.Time

object CoinAcceptor {

    private const val CHECK_INTERVAL = 50L
    private const val COIN_MASK_IN = 0x40
    private const val ACCEPT_MASK = 0x40

    fun receivingCoin(): Boolean {
        return HAL.isBit(COIN_MASK_IN)
    }

    fun waitCoin() {
        if (receivingCoin()) {
            HAL.setBits(ACCEPT_MASK)

            while (receivingCoin()) {
                Time.sleep(CHECK_INTERVAL)
            }

            HAL.clrBits(ACCEPT_MASK)
        }
    }
}

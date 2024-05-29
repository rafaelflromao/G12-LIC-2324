import isel.leic.UsbPort

object HAL {
    private const val INIT_VALUE = 0x0
    private var outData = INIT_VALUE

    fun init() {
        outData = INIT_VALUE
        UsbPort.write(outData)
    }

    fun readBits(mask: Int): Int {
        return UsbPort.read().and(mask)
    }

    fun isBit(mask: Int): Boolean {
        return readBits(mask) == mask && mask != 0
    }

    fun setBits(mask: Int) {
        outData = outData.or(mask)
        UsbPort.write(outData)
    }

    fun clrBits(mask: Int) {
        outData = outData.and(mask.inv())
        UsbPort.write(outData)
    }

    fun writeBits(mask: Int, value: Int) {
        outData = outData.and(mask.inv()).or(value.and(mask))
        UsbPort.write(outData)
    }

}
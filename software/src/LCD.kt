import isel.leic.utils.Time

object LCD {
    const val LINES = 2
    const val COLS = 16
    private const val SERIAL_INTERFACE = true

    private const val RS_MASK = 0x40
    private const val E_MASK = 0x20
    private const val CLK_REG_MASK = 0x10
    private const val DATA_MASK = 0x0F

    private const val LCD_SERIAL_WIDTH = 9

    // Comandos
    // Comando para definir o endereço da CGRAM.
    private const val CGRAM_SET_ADDR = 0x40
    // Comando para configurar o mostrador.
    private const val FUNCTION_SET = 0x38
    // Comando para desligar o mostrador.
    private const val DISPLAY_OFF = 0x08
    // Comando para limpar o mostrador.
    private const val DISPLAY_CLEAR = 0x01
    // Comando para configurar o modo de entrada.
    private const val ENTRY_MODE_SET = 0x06
    // Comando para ligar o mostrador.
    private const val DISPLAY_ON = 0x0C

    // Char data
    private const val CHAR_DATA_SIZE = 8

    // Caracteres personalizados
    const val SPACESHIP = '\u0000'


    private fun writeByteParallel(rs: Boolean, byte: Int) {
        // set RS
        if (rs) HAL.setBits(RS_MASK) else HAL.clrBits(RS_MASK)

        // write low nibble
        HAL.writeBits(DATA_MASK, byte ushr 4)
        HAL.setBits(CLK_REG_MASK)
        HAL.clrBits(CLK_REG_MASK)

        // write high nibble
        HAL.writeBits(DATA_MASK, byte)
        HAL.setBits(CLK_REG_MASK)
        HAL.clrBits(CLK_REG_MASK)

        // send enable pulse
        HAL.setBits(E_MASK)
        Time.sleep(2)
        HAL.clrBits(E_MASK)
    }

    private fun writeByteSerial(rs: Boolean, byte: Int) {
        var data = byte shl 1
        if (rs) data = data or 1
        SerialEmitter.send(SerialEmitter.Destination.LCD, data, LCD_SERIAL_WIDTH)
    }

    private fun writeByte(rs: Boolean, byte: Int) {
        if (SERIAL_INTERFACE) writeByteSerial(rs, byte) else writeByteParallel(rs, byte)
    }

    fun writeCMD(cmd: Int) {
        writeByte(false, cmd)
    }

    fun writeDATA(data: Int) {
        writeByte(true, data)
    }

    private fun registerSymbol(charCode: Int, charData: IntArray) {
        writeCMD(CGRAM_SET_ADDR or CHAR_DATA_SIZE * charCode)
        (0..<CHAR_DATA_SIZE).forEach{ writeDATA(charData[it]) }
    }

    private fun registerSymbols() {
        registerSymbol(SPACESHIP.code, intArrayOf(30, 24, 28, 31, 28, 24, 30, 0))
    }

    fun initDisplay() {
        Time.sleep(15)
        writeCMD(FUNCTION_SET)
        Time.sleep(3)
        writeCMD(FUNCTION_SET)
        writeCMD(FUNCTION_SET)

        writeCMD(FUNCTION_SET)
        writeCMD(DISPLAY_OFF)
        writeCMD(DISPLAY_CLEAR)
        writeCMD(ENTRY_MODE_SET)
    }

    fun init() {
        initDisplay()
        registerSymbols()
        cursor(0, 0)
        writeCMD(DISPLAY_ON)
    }

    fun write(c: Char) {
        writeDATA(c.code)
    }

    fun write(text: String) {
        text.forEach { write(it) }
    }

    fun cursor(line: Int, col: Int) {
        val cmd = 0x80 or (if (line == 0) 0 else 0x40) or col % COLS
        writeCMD(cmd)
    }

    fun displayOn() {
        writeCMD(DISPLAY_ON)
    }

    fun displayOff() {
        writeCMD(DISPLAY_OFF)
    }

    fun clear() {
        writeCMD(0x01)
    }
}
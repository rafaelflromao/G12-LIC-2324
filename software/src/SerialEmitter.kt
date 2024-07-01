import isel.leic.utils.Time

object SerialEmitter {

    enum class Destination { LCD, SCORE }

    private const val LCD_SEL_MASK = 0x01
    private const val SCORE_SEL_MASK = 0x02

    private const val CLK_MASK = 0x10
    private const val DATA_MASK = 0x08

    private const val HALF_PERIOD = 0L // Duração de cada transição de clock em milissegundos (Devido ao atraso na comunicação, pode ser desativado)

    // Inicia o objeto
    fun init() {
        HAL.setBits(LCD_SEL_MASK)
        HAL.setBits(SCORE_SEL_MASK)
        HAL.clrBits(CLK_MASK)
    }

    private fun sendBit(value: Boolean) {
        if (value) {
            HAL.setBits(DATA_MASK)
        } else {
            HAL.clrBits(DATA_MASK)
        }
        HAL.setBits(CLK_MASK)
        Time.sleep(HALF_PERIOD)
        HAL.clrBits(CLK_MASK)
        Time.sleep(HALF_PERIOD)
    }

    // Envia uma trama para o SerialReceiver identificado o destino em addr,os bits de dados em ‘data’ e em size o número de bits a enviar.
    fun send(addr: Destination, data: Int, size: Int) {
        // Seleciona o destino
        when (addr) {
            Destination.LCD -> HAL.clrBits(LCD_SEL_MASK)
            Destination.SCORE -> HAL.clrBits(SCORE_SEL_MASK)
        }

        // Envia os bits de dados
        for (i in 0..<size) {
            sendBit((data and (1 shl i)) != 0)
        }

        // Calcula bit de paridade
        var parity = 0
        for (i in 0..<size) {
            if (data and (1 shl i) != 0) {
                parity = parity xor 1
            }
        }

        // Envia o bit de paridade
        sendBit(parity != 0)

        // Termina a transmissão
        when (addr) {
            Destination.LCD -> HAL.setBits(LCD_SEL_MASK)
            Destination.SCORE -> HAL.setBits(SCORE_SEL_MASK)
        }
    }
}
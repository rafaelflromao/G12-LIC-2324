import kotlin.math.pow

// Controla o mostrador de pontuação.
object ScoreDisplay {

    // Bits de largura - Início
    private const val CMD_WIDTH = 3 // Número de bits a serem enviados para o comando.
    private const val DATA_WIDTH = 4 // Número de bits a serem enviados para cada dígito.
    private const val SCORE_WIDTH = CMD_WIDTH + DATA_WIDTH // Número total de bits a serem enviados.
    // Bits de largura - Fim

    // Comandos - Início
    private const val DISPLAY_ON = 0x07 // Comando para ativar a visualização do mostrador de pontuação.
    private const val DISPLAY_OFF = DISPLAY_ON or (1 shl CMD_WIDTH) // Comando para desativar a visualização do mostrador de pontuação.
    private const val DISPLAY_UPDATE = 0x06 // Comando para atualizar o valor do mostrador de pontuação.
    // Comandos - Fim

    // Propriedades de exibição - Início
    private const val MAX_DIGITS = 6 // Número máximo de dígitos a serem exibidos.
    private const val DIVISOR = 10 // Divisor para separar cada dígito da pontuação. (Como estamos a utilizar o sistema decimal, o divisor é 10)
    // Propriedades de exibição - Fim

    // Valores iniciais - Início
    private const val INITIAL_SCORE = 0 // Valor inicial da pontuação.
    // Valores iniciais - Fim

    // Mascaras - Início
    private const val CMD_MASK = (1 shl CMD_WIDTH) - 1 // Máscara para os bits de comando.
    private const val DATA_MASK = (1 shl DATA_WIDTH) - 1 // Máscara para os bits de dados.
    // Mascaras - Fim

    private var score = 0x0 // Pontuação atual.


    // Inicia o objeto, estabelecendo os valores iniciais.
    fun init() {
        setScore(INITIAL_SCORE, false) // Define o valor inicial do mostrador de pontuação
        off(false) // Ativa a visualização do mostrador de pontuação
    }

    private fun setDigit(index: Int, value: Int) {
        SerialEmitter.send(SerialEmitter.Destination.SCORE, (index and CMD_MASK) or ((value and DATA_MASK) shl CMD_WIDTH), SCORE_WIDTH) // Envia o novo valor do digito de indice i para o mostrador
    }

    // Envia comando para atualizar o valor do mostrador de pontuação
    fun setScore(value: Int, useCache: Boolean = true) {
        var valueAux = value // Cria uma cópia do valor numa variável auxiliar
        var currentScore = score // Cria uma cópia da pontuação numa variável auxiliar

        for (i in 0..<MAX_DIGITS) { // Define o valor do digito de indice i
            val currentDigit = currentScore % DIVISOR // Obtem o valor do digito de indice i
            val newDigit = valueAux % DIVISOR // Obtem o novo valor do digito de indice i

            if ((currentDigit != newDigit) || !useCache) { // Se o valor do digito de indice i for diferente do novo valor
                setDigit(i, newDigit) // Atualiza o valor do digito de indice i
            }

            valueAux /= DIVISOR // Remove a casa de menor peso do valor
            currentScore /= DIVISOR // Remove a casa de menor peso da pontuação
        }

        SerialEmitter.send(SerialEmitter.Destination.SCORE, DISPLAY_UPDATE, SCORE_WIDTH) // Atualiza o mostrador
        score = value // Atualiza o valor da pontuação
    }

    // Envia comando para desativar/ativar a visualização do mostrador de pontuação
    fun off(value: Boolean) {
        SerialEmitter.send(SerialEmitter.Destination.SCORE, if (value) DISPLAY_OFF else DISPLAY_ON, SCORE_WIDTH)
    }
}
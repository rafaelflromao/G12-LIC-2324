object TUI {

    // Number selection constants
    const val NUMBER_MIN = 0
    const val NUMBER_MAX = 9
    private const val ZERO_CHAR_CODE = '0'.code
    private const val NOT_SELECTED_CHAR = ']'
    const val NOT_SELECTED = -1

    // Invaders constants
    const val INVADERS_OFFSET = 2


    // Confirm constants
    private const val CONFIRM_YES = '5'

    // Message constants
    private const val CONFIRM_MSG = "${CONFIRM_YES}-Yes  other-No"
    private const val GAME_OVER_MSG = "*** Game Over **"
    private const val SCORE_MSG = "Score: "
    private const val GAME_NAME_MSG = "Space Invaders"


    // Symbol constants
    private const val SPACE = ' '
    private const val SPACESHIP = LCD.SPACESHIP

    // Selected number
    private var selectedNumber = NOT_SELECTED

    // Game key constants
    const val GAME_NO_KEY = -1
    const val GAME_SW_LINE = -2

    // LCD Column constants
    private const val SPACESHIP_COL = 1
    private const val SELECTED_NUMBER_COL = 0


    // Spaceship
    fun removeSpaceship(line: Int) {
        LCD.cursor(line, SPACESHIP_COL)
        LCD.write(SPACE)
        showSelectedNumber(line, NOT_SELECTED)
    }

    fun addSpaceship(line: Int) {
        LCD.cursor(line, SPACESHIP_COL)
        LCD.write(SPACESHIP)
        showSelectedNumber(line, NOT_SELECTED)
    }

    // Invaders
    fun removeInvader(line: Int, invaders: InvadersMap) {
        LCD.cursor(line, LCD.COLS - (invaders.getInvadersAmount(line) + 1))
        LCD.write(SPACE)
    }

    fun updateInvaders(invaders: InvadersMap) {
        for (line in 0..<LCD.LINES) {
            invaders.getInvaders(line).forEachIndexed { index, value ->
                LCD.cursor(line, (LCD.COLS - 1) - index)
                LCD.write(if (value != InvadersMap.EMPTY) (value + ZERO_CHAR_CODE).toChar() else SPACE)
            }
        }
    }


    // Selection
    fun showSelectedNumber(line: Int, value: Int) {
        cursor(line, SELECTED_NUMBER_COL)
        val c = if (value in NUMBER_MIN..NUMBER_MAX)
            (value + ZERO_CHAR_CODE).toChar()
        else
            NOT_SELECTED_CHAR
        LCD.write(c)
    }

    fun unselectNumber(line: Int) {
        selectedNumber = NOT_SELECTED
        showSelectedNumber(line, selectedNumber)
    }

    // Game Key polling
    tailrec fun pollGameKey(line: Int): Int {
        val key = KBD.getKey()
        if (key.code == KBD.NONE) return GAME_NO_KEY

        when (key) {
            '*' -> {
                return GAME_SW_LINE
            }

            '#' -> {
                return selectedNumber
            }

            else -> {
                selectedNumber = key.code - ZERO_CHAR_CODE
                showSelectedNumber(line, selectedNumber)
                return pollGameKey(line) // Consume remaining keys
            }
        }
    }

    // Intro
    fun showIntro() {
        clearDisplay()
        writeCentered(0, GAME_NAME_MSG)
    }

    // Game Over
    fun showGameOver() {
        clearDisplay()
        writeCentered(0, GAME_OVER_MSG)
    }

    // Score
    fun showScore(score: Int) {
        LCD.cursor(1, 0)
        LCD.write(SCORE_MSG + score.toString())
    }


    // Confirm
    fun confirm(msg: String, timeout: Long): Boolean {
        clearDisplay()
        writeCentered(0, msg)
        writeCentered(1, CONFIRM_MSG)
        return waitForKey(timeout) == CONFIRM_YES
    }

    // Output (LCD-related)
    fun writeCentered(line: Int, text: String) {
        val col = (LCD.COLS / 2) - text.length / 2 - (text.length % 2)
        cursor(line, col)
        write(text)
    }

    fun write(str: String) {
        LCD.write(str)
    }

    fun displayOn() {
        LCD.displayOn()
    }

    fun displayOff() {
        LCD.displayOff()
    }

    fun clearDisplay() {
        LCD.clear()
    }

    fun cursor(line: Int, col: Int) {
        LCD.cursor(line, col)
    }

    // Input (Keyboard-related)
    fun waitForKey(timeout: Long): Char {
        return KBD.waitKey(timeout)
    }
}
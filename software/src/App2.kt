import isel.leic.utils.Time

// Time constants
private const val PROMPT_TIMEOUT = 5000L
private const val INTRO_TIME = 10000L
private const val INTRO_KEY_TIME = 500L

// Key actions
private val keyActions = hashMapOf<Char, () -> Unit>()
private const val GAME_START_KEY = '*'

// Message constants
private const val SHUTDOWN_MSG = "Exit?"
private const val START_GAME_MSG = "Tap $GAME_START_KEY to start"

// Main

fun main() {
    HAL.init()
    SerialEmitter.init()
    ScoreDisplay.init()
    ScoreDisplay.off(false)
    var count = 0
    while (true) {
        ScoreDisplay.setScore(count++)
        Time.sleep(50L)
    }
}
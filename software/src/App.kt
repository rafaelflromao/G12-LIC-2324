import isel.leic.utils.Time

// Time constants
private const val PROMPT_TIMEOUT = 5000L
private const val INTRO_TIME = 10000L

// Key actions
private val keyActions = hashMapOf<Char, () -> Unit>()
private const val GAME_START_KEY = '*'

// Message constants
private const val SHUTDOWN_MSG = "Exit?"
private const val START_GAME_MSG = "Tap $GAME_START_KEY to start"

// Main

fun main() {
    HAL.init()
    KBD.init()
    SerialEmitter.init()
    LCD.init()
    ScoreDisplay.init()
    registerKeyActions()

    intro()
}

// Intro
private fun intro() {
    TUI.showIntro()
    // It's here because it depends on GAME_START_KEY
    TUI.writeCentered(1, START_GAME_MSG)

    val time = Time.getTimeInMillis() + INTRO_TIME

    // Intro loop
    while (Time.getTimeInMillis() < time) {
        // Action key polling
        val key = KBD.getKey()
        keyActions[key]?.invoke()
    }

    if(!shouldShutdown()) {
        // Reset
        intro()
    }
}

// Key actions

private fun registerKeyActions() {
    registerKeyAction(GAME_START_KEY, ::gameLoop)
}

private fun registerKeyAction(key: Char, action: () -> Unit) {
    keyActions[key] = action
}

// Shutdown Prompt (It is here because it accesses score display and TUI doesn't interact with it)
private fun shouldShutdown() : Boolean {
    if(TUI.confirm(SHUTDOWN_MSG, PROMPT_TIMEOUT)){
        ScoreDisplay.off(true)
        TUI.displayOff()
        return true
    }
    return false
}

// Game

private const val INVADER_SPAWN_TIME = 1000L
private const val INVADER_SPAWN_TIME_DECREMENT = 10L
private const val INITIAL_SPACESHIP_LINE = 0
private const val INITIAL_SCORE = 0
private const val INITIAL_DECREMENT = 0

private fun gameLoop() : Int {
    TUI.clearDisplay()
    val invaders = InvadersMap()
    var score = INITIAL_SCORE
    var nextInvaderTime = Time.getTimeInMillis() + INVADER_SPAWN_TIME
    var spaceshipLine = INITIAL_SPACESHIP_LINE
    TUI.addSpaceship(spaceshipLine)
    TUI.showSelectedNumber((spaceshipLine + 1) % LCD.LINES, TUI.NOT_SELECTED)
    var decrement = INITIAL_DECREMENT
    while (true) {

        // Check if it's time to spawn a new invader
        if (Time.getTimeInMillis() >= nextInvaderTime) {
            // Try to add a new invader (if there's no space, game over)
            if (!invaders.addRandomly()) {
                // Game over
                return score
            }
            // Update invaders display
            TUI.updateInvaders(invaders)
            // Update next invader spawn time
            nextInvaderTime += INVADER_SPAWN_TIME - ((decrement++) * INVADER_SPAWN_TIME_DECREMENT)
        }

        // Poll game key
        when (val key = TUI.pollGameKey(spaceshipLine)) {
            // No key pressed
            TUI.GAME_NO_KEY -> {}
            // Switch to next line
            TUI.GAME_SW_LINE -> {
                TUI.removeSpaceship(spaceshipLine)
                spaceshipLine = (spaceshipLine + 1) % LCD.LINES
                TUI.addSpaceship(spaceshipLine)
            }
            // Fire
            else -> {
                TUI.unselectNumber(spaceshipLine)
                if (invaders.getInvader(spaceshipLine) == key) {
                    invaders.removeInvader(spaceshipLine)
                    TUI.removeInvader(spaceshipLine, invaders)
                    score += key + 1
                    ScoreDisplay.setScore(score)
                }
            }
        }

    }
}
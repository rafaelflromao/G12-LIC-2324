import isel.leic.utils.Time
import kotlin.system.exitProcess

// Time constants
private const val PROMPT_TIMEOUT = 5000L
private const val INTRO_KEY_TIME = 50L
private const val SCORE_ENTRY_TIME_INIT = 10L * 1000L
private const val SCORE_ENTRY_TIME_STEP = 2L * 1000L

// Key actions
private const val GAME_START_KEY = '*'

// Message constants
private const val SHUTDOWN_MSG = "Exit?"

// Main

fun main() {
    HAL.init()
    KBD.init()
    SerialEmitter.init()
    LCD.init()
    ScoreDisplay.init()
    Statistics.load()
    Scores.load()
    intro()
}

// Intro
private fun intro() {
    // Intro Update
    var introUpdateTime = Time.getTimeInMillis()

    // Score Anim
    var scorePos = 0
    var scoreTime = SCORE_ENTRY_TIME_INIT + Time.getTimeInMillis()

    // Credits
    var credits = 0

    var updateMsg = true

    // Intro loop
    while (true) {

        // Check receinvingCoin
        if (CoinAcceptor.receivingCoin()) {
            CoinAcceptor.waitCoin()
            credits += 2
            Statistics.coins += 2
            Statistics.save()
            scoreTime = SCORE_ENTRY_TIME_INIT + Time.getTimeInMillis()
            updateMsg = true
        }

        // Check Maintenance
        if (M.isMaintenance()) {
            maintenanceLoop()
            updateMsg = false
        }






        if (updateMsg) {
            TUI.showIntro()
            TUI.showEndLine(1, "$$credits")
            updateMsg = false
        }

        // Show scores
        if (scoreTime < Time.getTimeInMillis()) {
            Scores.scores[scorePos]?.let {
                TUI.showScoreEntry(scorePos, it.name, it.score)
            }
            scorePos = (scorePos + 1) % Scores.amount
            scoreTime = Time.getTimeInMillis() + SCORE_ENTRY_TIME_STEP
        }

        ScoreDisplay.scoreAnimUpdate()


        // Action key polling
        val key = TUI.waitForKey(INTRO_KEY_TIME)

        println(key)

        when (key) {
            GAME_START_KEY -> {
                if (credits > 0) {
                    --credits
                    ++Statistics.games
                    Statistics.save()
                    val score = gameLoop()
                    TUI.showGameOver()
                    ScoreDisplay.blink(5000, 500)
                    ScoreDisplay.off(true)
                    TUI.clearDisplay()
                    if (score > 0) {
                        TUI.showScore(score)
                        Scores.addScore(Score(TUI.askName(), score))
                        Scores.save()
                    }
                    updateMsg = true
                }
            }
        }
    }
}

// Shutdown Prompt (It is here because it accesses score display and TUI doesn't interact with it)
private fun shouldShutdown(): Boolean {
    if (TUI.confirm(SHUTDOWN_MSG, PROMPT_TIMEOUT)) {
        ScoreDisplay.off(true)
        TUI.displayOff()
        Scores.save()
        Statistics.save()
        return true
    }
    return false
}

// Maintenance Loop

// Time constants
const val STATISTICS_TIME = 5000L

// Key Constants
const val SHOW_COUNT_KEY = '*'
const val SHUTDOWN_KEY = '#'
const val CLEAR_STAT_KEY = '#'

private fun maintenanceLoop() {
    var updateMsg = true
    while (M.isMaintenance()) {
        if (updateMsg) {
            TUI.showMaintenance()
            updateMsg = false
        }

        val key = TUI.waitForKey(INTRO_KEY_TIME)
        when (key) {
            SHUTDOWN_KEY -> {
                if (shouldShutdown()) {
                    exitProcess(0)
                }
                updateMsg = true
            }

            SHOW_COUNT_KEY -> {
                TUI.showCount(Statistics.games, Statistics.coins)
                val key = TUI.waitForKey(STATISTICS_TIME)
                when (key) {
                    CLEAR_STAT_KEY -> {
                        Statistics.reset()
                        Statistics.save()
                    }
                }
                updateMsg = true
            }

            '\u0000' -> {}

            else -> {
                gameLoop()
                updateMsg = true
            }
        }
    }
}

// Game

private const val INVADER_SPAWN_TIME = 1000L
private const val INVADER_SPAWN_TIME_DECREMENT = 10L
private const val INITIAL_SPACESHIP_LINE = 0
private const val INITIAL_SCORE = 0
private const val INITIAL_DECREMENT = 0

private fun gameLoop(): Int {
    TUI.clearDisplay()
    ScoreDisplay.off(false)
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
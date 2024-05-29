import TUI.NUMBER_MAX
import TUI.NUMBER_MIN
import java.security.SecureRandom
import kotlin.random.Random
import kotlin.random.asKotlinRandom

class InvadersMap {

    private val invaders = Array(LCD.LINES) { Queue(MAX_SIZE) }
    private val secureRandom = SecureRandom().asKotlinRandom()

    fun addInvader(line: Int, invader: Int) : Boolean {
        if (invaders[line].isFull()) {
            return false
        }
        invaders[line].enqueue(invader)
        return true
    }

    fun addRandomly(random: Random = secureRandom): Boolean {
        return addInvader((0..<LCD.LINES).random(random), (NUMBER_MIN..NUMBER_MAX).random(random))
    }

    fun removeInvader(line: Int) : Boolean {
        if (invaders[line].isEmpty()) {
            return false
        }
        invaders[line].dequeue()
        return true
    }

    fun getInvader(line: Int): Int {
        return if (invaders.size > 1) invaders[line].peek() else EMPTY
    }

    fun getInvaders(line: Int) : IntArray {
        return invaders[line].toArray().reversed().toIntArray()
    }

    fun getInvadersAmount(line: Int): Int {
        return invaders[line].size
    }

    companion object {
        const val EMPTY = -1
        private const val MAX_SIZE = LCD.COLS - TUI.INVADERS_OFFSET
    }
}
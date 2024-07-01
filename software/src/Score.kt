import kotlin.math.min

const val MAX_NAME_LENGTH = 8

data class Score(val name: String, val score: Int) {
    init {
        require(name.isNotEmpty())
    }

    companion object {
        fun fromString(s: String): Score {
            val scoreRow = s.split(";", limit = 2)
            val name = scoreRow[1].let { it.substring(0, min(it.length, MAX_NAME_LENGTH)) }
            val value = scoreRow[0].toInt()
            return Score(name, value)
        }
    }

    override fun toString(): String {
        return "$score;$name"
    }
}

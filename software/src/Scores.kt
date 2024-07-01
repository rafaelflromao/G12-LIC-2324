import java.io.File

object Scores {
    const val SCORES_FILENAME = "SIG_scores.txt"
    const val MAX_ENTRIES = 20

    val scores : Array<Score?> = arrayOfNulls(MAX_ENTRIES)
    var amount = 0

    fun getPos(score: Int) : Int {
        if (score <= 0) return -1
        for (i in scores.indices) {
            if (scores[i] == null || score >= scores[i]!!.score) return i
        }
        return -1
    }

    fun reset() {
        amount = 0
        scores.fill(null)
    }

    fun addScore(score: Score) {
        val index = getPos(score.score)
        if (index < 0) return
        for (i in 19 downTo index+1) {
            scores[i] = scores[i - 1]
        }
        if(amount < MAX_ENTRIES) ++amount
        scores[index] = score
    }

    fun load() {
        reset()
        val file = File(SCORES_FILENAME)
        if(!file.exists()) return
        FileAccessor.createReader(file).useLines {
            it.take(MAX_ENTRIES).forEachIndexed { index, s ->
                scores[index] = Score.fromString(s)
                ++amount
            }
        }
    }



    fun save() {
        FileAccessor.createWriter(File(SCORES_FILENAME)).use {
            scores.filterNotNull().forEach { score -> it.write(score.toString() + "\n") }
        }
    }
}
import java.io.File

object Statistics {
    const val STATISTICS_FILENAME = "statistics.txt"

    var coins = 0
    var games = 0

    fun reset() {
        coins = 0
        games = 0
    }

    fun load() {
        val file = File(STATISTICS_FILENAME)
        if(!file.exists()) return
        FileAccessor.createReader(file).use {
            games = it.readLine().toInt()
            coins = it.readLine().toInt()
        }
    }

    fun save() {
        val file = File(STATISTICS_FILENAME)
        FileAccessor.createWriter(file).use {
            it.write("$games\n")
            it.write("$coins\n")
        }
    }
}
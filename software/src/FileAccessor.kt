import java.io.*

object FileAccessor {
    fun createReader(file: File) : BufferedReader {
        return BufferedReader(FileReader(file))
    }

    fun createWriter(file: File) : BufferedWriter {
        return BufferedWriter(FileWriter(file))
    }
}
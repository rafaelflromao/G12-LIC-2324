class Queue(private val capacity: Int) {
    private val queue = IntArray(capacity)
    private var front = 0
    private var rear = -1
    var size = 0
        private set

    fun toArray(): IntArray {
        val array = IntArray(size)
        var i = 0
        var j = front
        while (i < size) {
            array[i++] = queue[j]
            j = (j + 1) % capacity
        }
        return array
    }

    fun enqueue(item: Int) {
        if (isFull()) {
            throw IllegalStateException("Queue is full")
        }

        rear = (rear + 1) % capacity
        queue[rear] = item
        size++
    }

    fun dequeue(): Int {
        if (isEmpty()) {
            throw IllegalStateException("Queue is empty")
        }

        val item = queue[front]
        front = (front + 1) % capacity
        size--
        return item
    }

    fun peek(): Int {
        if (isEmpty()) {
            throw IllegalStateException("Queue is empty")
        }

        return queue[front]
    }

    fun isFull(): Boolean {
        return size == capacity
    }

    fun isEmpty(): Boolean {
        return size == 0
    }
}
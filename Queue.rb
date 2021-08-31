class Queue
    def initialize
        @underlying_array= []
    end

    def enqueue(el)
        underlying_array << el
        el
    end

    def dequeue
        underlying_array.shift
    end

    def peek
        underlying_array.first
    end


    private
    
    attr_reader :underlying_array
    #Not to access the underlying array from outside the class
    #FIFO
    #Notice that you can only access or see the first element of the queue only (peek)
end
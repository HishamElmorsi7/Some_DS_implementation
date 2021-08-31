class Stack
    def initialize
        # create an array to store stack here!
        @arr = []
    end
    
    def push(el)
        # adds an element to the stack
        @arr << el
        el
    end
    
    def pop
        # removes one element from the stack
        @arr.pop
    end
    
    def peek
        # returns, but doesn't remove, the top element in the stack
        @arr.last
    end
end

#LIFO
#Notice that the methods doesn't return arr but element not to access the arr
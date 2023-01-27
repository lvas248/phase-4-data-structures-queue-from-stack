require 'pry'

require_relative './stack'

# your code here

class MyQueue

    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def add(value)
        @s1.push(value)
    end



    def remove
        
        until @s1.empty?
            @s2.push(@s1.pop)
        end

        first = @s2.pop

        until @s2.empty?
            @s1.push(@s2.pop)
        end

        first

    end

    def peek

        until @s1.empty?
            @s2.push(@s1.pop)
        end
        
        first = @s2.peek
        
        until @s2.empty?
            @s1.push(@s2.pop)
        end

        first

    end

end

q = MyQueue.new
q.add('a')
q.add('b')
q.add('c')
q.add('d')

# binding.pry
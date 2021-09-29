# Enter your object-oriented solution here!
class LargestPrimeFactor
    attr_accessor :num

    def initialize(num)
        @num = num
    end

    def number
        current = num

        (2..Math.sqrt(num).to_i).each do |i|
            current /= i if current % i == 0 && current / i > 1
        end
    
        current
    end

end
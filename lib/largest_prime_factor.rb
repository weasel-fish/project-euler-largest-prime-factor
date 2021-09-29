# Enter your procedural solution here!

def largest_prime_factor(num)
    
    current = num

    (2..Math.sqrt(num).to_i).each do |i|
        current /= i if current % i == 0 && current / i > 1
    end

    current
end
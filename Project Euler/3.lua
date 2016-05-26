--
-- User: hybridtupel
-- Date: 26.05.16
-- Time: 20:06
--

function largestFactor(number)
    local max = math.floor(math.sqrt(number))
    for i = max, 2, -1 do
        if number % i == 0 and isPrime(i) then
            return i
        end
    end
end

function isPrime(number)
    local max = math.sqrt(number)
    for i = 2, max do
        if number % i == 0 then
            return false
        end
    end
    return true
end

print(largestFactor(600851475143))
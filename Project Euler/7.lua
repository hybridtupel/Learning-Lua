--
-- User: hybridtupel
-- Date: 31.05.16
-- Time: 13:34
--

function isPrime(number)
    local max = math.sqrt(number)
    for i = 2, max do
        if number % i == 0 then
            return false
        end
    end
    return true
end

function nThPrime(n)
    local primes = 1
    local i = 3
    while primes < n do
        if isPrime(i) then
            primes = primes + 1
        end
        i = i + 1
    end
    return i - 1
end


print (nThPrime(10001))
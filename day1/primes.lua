--
-- Created by IntelliJ IDEA.
-- User: hybridtupel
-- Date: 12.05.16
-- Time: 20:57
-- To change this template use File | Settings | File Templates.
--
function isPrime(number)
    local maxDivisor = math.sqrt(number)
    for i = 2, maxDivisor, 1 do
        if dividableBy(number, i) then
            return false
        end
    end
    return true
end

function dividableBy(number, divisor)
    return (number % divisor) == 0
end

function endsIn3(number)
    return number % 10 == 3
end

function primeEndingin3(number)
    return endsIn3(number) and isPrime(number)
end

print(endsIn3(3))
print(endsIn3(43234))
print(endsIn3(555))
print(endsIn3(553))


print("---")
print(primeEndingin3(13))
print(primeEndingin3(17))
print(primeEndingin3(21))
print(primeEndingin3(23))



print(isPrime(11))


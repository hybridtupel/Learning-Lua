--
-- User: hybridtupel
-- Date: 25.05.16
-- Time: 17:55
--

function nextFibonacci(previous, current)
    return previous + current
end

function evenFibonacciNumbers(maxFib)
    local sum = 0
    local previous = 0
    local current = 1
    while current < maxFib do
        local next = nextFibonacci(previous, current)
        previous = current
        current = next
        if (current % 2 == 0) then
            sum = sum + current
        end
    end
    return sum
end

print(evenFibonacciNumbers(4000000))
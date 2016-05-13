--
-- Created by IntelliJ IDEA.
-- User: hybridtupel
-- Date: 12.05.16
-- Time: 22:26
-- To change this template use File | Settings | File Templates.
--

function add(previous, next)
    return previous + next
end

function mult(previous, next)
    return previous * next
end


function reduce(max, init, func)
    local currentResult = init
    for i = init, max do
        currentResult = func(currentResult, i)
    end
    return currentResult
end

function factorial(max, init, func)
    local currentResult = 0
    local prevResult
    for i = init, max do
        prevResult = currentResult
        currentResult = i
        currentResult = func(prevResult,currentResult)
    end
    return currentResult
end

print(reduce(100, 0, add))
print(factorial(4, 2, add))
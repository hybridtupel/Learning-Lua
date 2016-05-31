--
-- User: hybridtupel
-- Date: 31.05.16
-- Time: 11:57
--

function squareSum(max)
    local squareSum = 0
    for i = 1, max do
        squareSum = squareSum + i ^ 2
    end
    return squareSum
end

function sum(max)
    local sum = 0
    for i = 1, max do
        sum = sum + i
    end
    sum = sum ^ 2
    return sum
end

function sumSquareSumDifference(max)
    return sum(max) - squareSum(max)
end

print(sumSquareSumDifference(100))

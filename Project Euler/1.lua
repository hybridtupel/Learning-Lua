--
-- User: hybridtupel
-- Date: 25.05.16
-- Time: 17:47
--

function isMultipleOf3Or5(number)
    return number % 3 == 0 or number % 5 == 0
end

function sumOfMultiples(max)
    local sum = 0
    for i = 1, max - 1 do
        if isMultipleOf3Or5(i) then
            sum = sum + i
        end
    end
    return sum
end

print(sumOfMultiples(1000))
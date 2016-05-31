--
-- User: hybridtupel
-- Date: 31.05.16
-- Time: 11:15
--

function isDivisableByRange(number, rangeMax)
    for i = 2, rangeMax do
        if number % i ~= 0 then
            return false
        end
    end
    return true
end

function smallestMultiple(rangeMax)
    local smallestMultiple = 1
    while true do
        if (isDivisableByRange(smallestMultiple, rangeMax)) then
            return smallestMultiple
        end
        smallestMultiple = smallestMultiple + 1
    end
end

print(smallestMultiple(20))
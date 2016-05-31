--
-- User: hybridtupel
-- Date: 31.05.16
-- Time: 09:11
--

function isPalindrome(wordNumber)
    local word = tostring(wordNumber)
    local wordBackwards = string.reverse(word)

    return word == wordBackwards
end


function largestPalindrome(numberDigits)
    local smallest = 10 ^ (numberDigits - 1)
    local biggest = 10 ^ numberDigits - 1
    local largestPalindrome = 0
    for i = smallest, biggest do
        for j = smallest, biggest do
            local currentProduct = i * j
            if isPalindrome(currentProduct) and largestPalindrome < currentProduct then
                largestPalindrome = currentProduct
            end
        end
    end
    return largestPalindrome
end


print(largestPalindrome(3))


--
-- User: hybridtupel
-- Date: 16.05.16
-- Time: 18:35
--

function concatenate(a1, a2)
    local result = a1
    for _,v in ipairs(a2) do
        a1[#a1 + 1] = v
    end
    return result
end

a1 = {
    1, 3, 3, 5
}
a2 = {
    5, 6, 7, 8
}

a3 = concatenate(a1, a2)

for i,v in ipairs(a3) do
    print(i .. ": " .. v)
end

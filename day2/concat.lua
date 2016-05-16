--
-- User: hybridtupel
-- Date: 16.05.16
-- Time: 18:35
--

function concatenate(a1, a2)
    local result = {}
    for i, v in ipairs(a1) do
        result[i] = v
    end
    for _, v in ipairs(a2) do
        result[#result + 1] = v
    end
    return result
end

_G.__newindex = function(table, key, value)
    setmetatable(table, { __add = concatenate })
end


a1 = {
    1, 2, 3, 4
}
a2 = {
    5, 6, 7, 8
}

a3 = concatenate(a1, a2)

for i, v in ipairs(a3) do
    print(i .. ": " .. v)
end



a4 = a1 + a2

print("-----")

for i, v in ipairs(a4) do
    print(i .. ": " .. v)
end
--
-- User: hybridtupel
-- Date: 13.05.16
-- Time: 16:21
--

local _private = {}

function strict_read(table, key)
    if _private[key] then
        return _private[key]
    else
        error("Invalid key: " .. key)
    end
end

function strict_write(table, key, value)
    if _private[key] and value then
        error("Duplicate key: " .. key)
    else
        _private[key] = value
    end
end

local mt = {
    __index = strict_read,
    __newindex = strict_write
}

treasure = {}
setmetatable(treasure, mt)

treasure.gold = 50

print(treasure.gold)


treasure.gold = nil

treasure.gold = 100

print(treasure.gold)

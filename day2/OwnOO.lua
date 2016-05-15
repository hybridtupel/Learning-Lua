--
-- User: hybridtupel
-- Date: 14.05.16
-- Time: 12:38
--

VillainMeta = {
    __call = function(self, name)
        local obj = {
            name = name,
            health = self.health
        }
        setmetatable(obj, self)
        self.__index = self

        return obj
    end
}


Villain = {
    health = 100,
}
setmetatable(Villain, VillainMeta)

function Villain:new(name)
    local obj = {
        name = name,
        health = self.health
    }
    setmetatable(obj, self)
    self.__index = self
    self.__tostring = function(table)
        return table.name .. " " .. table.health
    end


    return obj
end


function Villain:take_hit()
    self.health = self.health - 10
end


SuperVillain = Villain:new()

function SuperVillain:take_hit()
    self.health = self.health - 5
end

dietrich = Villain("Dietrich")
dietrich:take_hit()
heinz = Villain("Heinz")
print(heinz)

print(dietrich)

toht = SuperVillain:new("Toht")
toht.take_hit(toht)
print(toht)

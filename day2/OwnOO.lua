--
-- User: hybridtupel
-- Date: 14.05.16
-- Time: 12:38
--


Villain = {
    health = 100,
}
function Villain:new(name)
    local obj = {
        name = name,
        health = self.health
    }
    setmetatable(obj, self)
    self.__index = self

    return obj
end

function Villain:take_hit()
    self.health = self.health - 10
end


SuperVillain = Villain:new()

function SuperVillain:take_hit()
    self.health = self.health - 5
end

dietrich = Villain:new("Dietrich")
dietrich:take_hit()

print(dietrich.health)

toht = SuperVillain:new("Toht")
toht.take_hit(toht)
print(toht.health)

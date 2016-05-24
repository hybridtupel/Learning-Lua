--
-- User: hybridtupel
-- Date: 24.05.16
-- Time: 18:27
--

QueueMeta = {
    __call = function(self)
        local obj = {
            items = {}
        }
        setmetatable(obj, self)
        self.__index = self
        self.__tostring = function(table)
            local text = "["
            for _, v in pairs(table.items) do
                text = text .. " " .. v
            end
            text = text .. " ]"
            return text
        end

        return obj
    end
}

Queue = {}
function Queue:add(item)
    table.insert(self.items, item)
end

function Queue:remove()
    if #self.items > 0 then
        return table.remove(self.items, 1)
    else
        return nil
    end
end



setmetatable(Queue, QueueMeta)

myQueue = Queue()

myQueue:add(1)
myQueue:add(2)

print(myQueue)

print(myQueue:remove())

print(myQueue)

print(myQueue:remove())

print(myQueue)
print(myQueue:remove())

print(nil)




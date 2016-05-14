--
-- User: hybridtupel
-- Date: 14.05.16
-- Time: 15:00
--

function fibonacci()
    local m = 1
    local n = 1

    while true do
        coroutine.yield(m)
        m, n = n, m + n
    end
end

generator = coroutine.create(fibonacci)

for i = 1, 10 do
    succeeded, value = coroutine.resume(generator)
    print(value)
end



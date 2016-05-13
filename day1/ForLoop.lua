--
-- Created by IntelliJ IDEA.
-- User: hybridtupel
-- Date: 12.05.16
-- Time: 21:54
-- To change this template use File | Settings | File Templates.
--
function for_loop(a, b, f)
    local i = a

    while i <= b do
        i = i + 1
        f(i)
    end
end

for_loop(0, 10, (function (i) print("test " .. i) end))
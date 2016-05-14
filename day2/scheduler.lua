--
-- User: hybridtupel
-- Date: 14.05.16
-- Time: 15:16
--

local pending = {}

local function schedule(time, action)
    pending[#pending + 1] = {
        time = time,
        action = action
    }
end

local function wait(seconds)
    coroutine.yield(seconds)
end

local function sort_by_time(array)
    table.sort(array, function(e1, e2)
        return e1.time < e2.time
    end)
end

local function remove_first(array)
    local result = array[1]
    array[1] = array[#array]
    array[#array] = nil
    return result
end

local function run()
    while #pending > 0 do
        sort_by_time(pending)
        while os.clock() < pending[1].time do end

        local item = remove_first(pending)
        local _, seconds = coroutine.resume(item.action)

        if seconds then
            local later = os.clock() + seconds
            schedule(later, item.action)
        end
    end
end

return {
    schedule = schedule,
    run = run,
    wait = wait
}
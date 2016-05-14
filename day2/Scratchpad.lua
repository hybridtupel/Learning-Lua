--
-- User: hybridtupel
-- Date: 13.05.16
-- Time: 14:18
--

book = {
    title = "Grail Diary",
    author = "Henry Jones",
    pages = 100
}

print(book.title)
print(book.stars)
print(book.author)

book.stars = 5
book.author = "Henry Jones Sr."

print(book.title)
print(book.stars)
print(book.author)

key = "title"
print(book[key])

function print_table(t)
    for k, v in pairs(t) do
        print(k .. ":  " .. v)
    end
end

print()

print_table(book)

medals = {
    "gold",
    "silver",
    "bronze"
}

print()

print(medals[1])
medals[4] = "lead"

print()

ice_cream_scoops = {
    "vanilla",
    "chocholate";

    sprinkles = true
}

print(ice_cream_scoops[1])
print(ice_cream_scoops.sprinkles)

function table_to_string(t)
    local result = {}

    for k, v in pairs(t) do
        result[#result + 1] = k .. ": " .. v
    end

    return table.concat(result, "\n")
end

greek_numbers = {
    ena = "one",
    dyo = "two",
    tria = "three"
}

mt = {
    __tostring = table_to_string
}

setmetatable(greek_numbers, mt)

print("\nGreek numbers")

print(greek_numbers)


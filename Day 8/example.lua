local class = require("libs.middleclass")

-- Define a class called 'Fruit'
local Fruit = class("Fruit")

-- Constructor for the 'Fruit' class
function Fruit:initialize(age)
    self.age = age
end

-- Method to check if the fruit is good (age 7 or older)
function Fruit:isGood()
    return self.age >= 7
end

-- Return the 'Fruit' class
return Fruit

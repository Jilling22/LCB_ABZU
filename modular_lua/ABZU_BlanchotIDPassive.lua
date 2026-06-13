-- All Blanchot passive will be put here


-- Base ID ("id" = 101001)
-- Passive "It was drawing circles around me" ("id" = 20100101)

function baseBlanchotPassive()
    local spcheck = getsp("Self")
    if spcheck < 0 then
        -- Apply AttackUp to self if SP is below 0 at the start of the turn
        buff("Self", "AttackUp", 1, 0, 0)
    end
end

-- Support Passive "Toi aussi, tu le veux" ("id" = 20100102)

function basesupportBlanchotPassive()
    if issameunit("Self", "LowestSPAlly1") == 0 then return end
    if getunitfaction("Self") == 0 then return end

    local randomally = selecttargets("LowestSPRandomAlly1")[1]
    healsp(randomally, 10)
end
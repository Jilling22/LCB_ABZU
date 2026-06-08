-- All Enkita passive will be put here


-- Base ID ("id" = 111001)
-- Passive "Memories" ("id" = 21100101)

function baseEnkitaPassive()
    local unit = selecttargets("Enemy99")
    local enemyIDHighestBurst = nil
    local highestBurstStack = 0
    -- compare Burst stack of all enemies and find the one with the highest Burst stack
    for i, instID in ipairs(unit) do
        if getbuff(instID, "Burst", "stack") > highestBurstStack then
            highestBurstStack = getbuff(instID, "Burst", "stack")
            enemyIDHighestBurst = instID
        end
    end
    buff(enemyIDHighestBurst, "Burst", 0, 1, 0)
end

-- Passive "Fading Nostalgia" ("id" = 21100102)
function basesupportEnkitaPassive()
    local enemyList = selecttargets("Enemy99")
    -- give Burst to all enemies with Burst
    for i, instID in ipairs(enemyList) do
        if getbuff(instID, "Burst", "stack") > 0 then
            buff(instID, "Burst", 0, 1, 0)
        end
    end
end
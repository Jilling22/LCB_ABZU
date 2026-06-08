-- All Enkita passive will be put here


-- Base ID ("id" = 111001)
-- Passive "Memories" ("id" = 21100101)

function baseEnkitaPassive()
    local unit = selecttargets("Enemy")
    local enemyHighestBurst = 0
    local highestBurstStack = 0
    for i, enemyID in ipairs(unit) do
        local burstStack = getbuff(enemyID, "Burst", "stack")
        if burstStack > highestBurstStack then
            highestBurstStack = burstStack
            enemyHighestBurst = enemyID
        end
    end
    buff(enemyHighestBurst, "Burst", 0, 1, 0)
    enemyHighestBurst = 0
    highestBurstStack = 0
end
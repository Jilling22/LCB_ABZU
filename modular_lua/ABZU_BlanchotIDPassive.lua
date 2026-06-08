-- All Blanchot passive will be put here


-- Base ID ("id" = 101001)
-- Passive "It was drawing circles around me" ("id" = 20100101)

function baseBlanchotPassive()
    local spcheck = getsp()
    if spcheck < 0 then
        buff("Self", "AttackUp", 1, 0, 0)
        log("Blanchot Passive Activated: SP is below 0, Attack Up applied.")
    else
        log("Blanchot Passive Not Activated: SP is above or equal to 0, no buff applied.")
    end
end
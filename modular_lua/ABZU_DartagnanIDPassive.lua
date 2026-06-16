-- All D'artagnan passive will be put here


-- Base ID ("id" = 112001)
--Passive "The Right of Way Priority" ("id" = 21200101)
function baseDartagnanPassive()
    if getspeed("Self") > getspeed("Target") then
        clash(1)
    end
end

-- Support Passive "Support" ("id" = 21200102)

function basesupportDartagnanPassive()
    if issameunit("Self", "FastestAlly1") == 0 then return end
    if getunitfaction("Self") == 0 then return end


    if getskillatk("Self") == 1 then
         dmgmult(20)
    end
end
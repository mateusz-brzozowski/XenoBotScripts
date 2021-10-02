----------- CFG -----------
-- manas id:
mana_potion = 238
hit_potion = 23374
-- go back when manas less than:
mana_min = 100
hit_min = 100
-- script

function check_potion(potion_id, potion_min)
    if Self.ItemCount(potion_id) < potion_min then
        return false
    else
        return true
    end
end

function main()
    mana_status = check_potion(mana_potion, mana_min)
    hit_status = check_potion(hit_potion, hit_min)
    if not(mana_status) or not(hit_status) then
        Walker.Goto("Refil")
    end
end

while (true) do
    mana_status = check_potion(mana_potion, mana_min)
    hit_status = check_potion(hit_potion, hit_min)
    if not(mana_status) or not(hit_status) then
        Walker.Goto("Refil")
        break
    end
    if labelName == 'Refil' then
        Walker.ConditionalGoto(not(mana_status) or not(hit_status), 'Refill', 'Hunt')
        end
    sleep(10000)
end
 
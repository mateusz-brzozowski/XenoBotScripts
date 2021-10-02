--
ammo = 25757 -- id ammo
ammo_cast = "exevo gran con hur" -- czar na robienie ammo
smp = 23374 -- id manasa od many zeby dobic do 2k many


--script
-- while true do
--     if Self.ItemCount(ammo) < 100 then
--         if Self.Mana() > 2000 then
--             Self.Say(ammo_cast)
--             sleep(59000)
--         else
--             Self.UseItemWithMe(smp)
--             sleep(100)
--         end
--         sleep(500)
--     else
--         if Self.Ammo().count == 0 then
--             Self.Equip(ammo, "ammo", Self.Ammo().count)
--         end
--     end
-- end

while true do
    if Self.ItemCount(ammo) < 200 then
        if Self.Mana() > 2000 then
            Self.Say(ammo_cast)
            sleep(59000)
        else
            Self.UseItemWithMe(smp)
        end
    end
    sleep(300)
end


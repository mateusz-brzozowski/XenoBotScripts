--cfg
smp = 23374
uhp = 238

--script
while true do
    if Self.ItemCount(smp) < 70 then
        alert()
    end
    if Self.ItemCount(uhp) < 30 then
        alert()
    end
    sleep(1000)
end
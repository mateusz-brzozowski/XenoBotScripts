blockedMessages = {
    "New mail has arrived.",
    "You are poisoned.",
    "You are paralyzed.",
    "You are drunk."
}

alarmMessages = {
    "The ancient volcano on Goroma slowly becomes active once again.",
    "There is an evil presence at the volcano of Goroma.",
    "Evil Cultists have called an ancient evil into the volcano on Goroma. Beware of its power mortals."
}

local channel = Channel.New("Raid Messages", onSpeak, onClose)
    GenericTextMessageProxy.OnReceive("GenProxy", function (proxy, message)
    x = string.match(message, "(%d+)")
    if tonumber(x) == nil and not table.contains(blockedMessages, message) then
        if table.contains(alarmMessages, message) then
            while (true) do
                alert()
            end
        end
        channel:SendOrangeMessage("Raid Catcher", message)
    end
end)

function onClose(channel)
print(channel .. " was closed.")
end
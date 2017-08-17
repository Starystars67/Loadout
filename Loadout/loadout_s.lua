-- ======================================
      -- Written By : Titch2000
	  -- Requested by NoamKvet
      -- Free to use and edit but 
	  -- please give credit
-- ======================================


AddEventHandler("chatMessage", function(source, color, msg)
    if msg:sub(1, 1) == "/" then
        fullcmd = stringsplit(msg, " ")
        cmd = fullcmd[1]

        if cmd == "/policeloadout" then
            TriggerClientEvent("yt:policeLoadout", source)
            CancelEvent()
        end
    end
end)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

AddEventHandler("chatMessage", function(source, color, msg)
    if msg:sub(1, 1) == "/" then
        fullcmd = stringsplit(msg, " ")
        cmd = fullcmd[1]

        if cmd == "/highwayloadout" then
            TriggerClientEvent("yt:highwayLoadout", source)
            CancelEvent()
        end
    end
end)
-- ======================================
      -- Written By : Titch2000
        -- Paid By : NoamKvet
            -- Free To Use
-- ======================================

local policeloadout = {
    {['i'] = 1, ['weapon'] = "WEAPON_COMBATPISTOL"},
    {['i'] = 2, ['weapon'] = "WEAPON_STUNGUN"},
    {['i'] = 3, ['weapon'] = "WEAPON_PUMPSHOTGUN"},
    {['i'] = 4, ['weapon'] = "WEAPON_CARBINERIFLE"},
    {['i'] = 5, ['weapon'] = "WEAPON_NIGHTSTICK"},
    {['i'] = 6, ['weapon'] = "WEAPON_FLASHLIGHT"}
}

RegisterNetEvent("yt:policeLoadout")
AddEventHandler("yt:policeLoadout", function()
 RemoveAllPedWeapons(GetPlayerPed(-1))
 local model = GetHashKey("s_m_y_sheriff_01")
    RequestModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(0)
    end
    SetPlayerModel(PlayerId(), model)
    SetModelAsNoLongerNeeded(model)


local playerPed = GetPlayerPed(-1)
    for k,v in ipairs(policeloadout) do
        Citizen.Trace("Weapon: "..v.i.." "..v.weapon.." Given to ".. playerPed)
        GiveWeaponToPed(playerPed, GetHashKey(v.weapon), 9999, true, true)
    end



end)

local trooperloadout = {
    {['i'] = 1, ['weapon'] = "WEAPON_COMBATPISTOL"},
    {['i'] = 2, ['weapon'] = "WEAPON_STUNGUN"},
    {['i'] = 3, ['weapon'] = "WEAPON_PUMPSHOTGUN"},
    {['i'] = 4, ['weapon'] = "WEAPON_CARBINERIFLE"},
    {['i'] = 5, ['weapon'] = "WEAPON_NIGHTSTICK"},
    {['i'] = 6, ['weapon'] = "WEAPON_FLASHLIGHT"},
}

RegisterNetEvent("yt:trooperLoadout")
AddEventHandler("yt:trooperLoadout", function()
 RemoveAllPedWeapons(GetPlayerPed(-1))
 local model = GetHashKey("s_m_y_hwaycop_01")
    RequestModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(0)
    end
    SetPlayerModel(PlayerId(), model)
    SetModelAsNoLongerNeeded(model)


local playerPed = GetPlayerPed(-1)
    for k,v in ipairs(trooperloadout) do
        Citizen.Trace("Weapon: "..v.i.." "..v.weapon.." Given to ".. playerPed)
        GiveWeaponToPed(playerPed, GetHashKey(v.weapon), 9999, true, true)
    end



end)
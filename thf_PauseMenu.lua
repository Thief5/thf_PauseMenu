Citizen.CreateThread(function()
local htime = 100
local ok = true
    while true do
      local pause = IsPauseMenuActive()
      if not IsPedInAnyVehicle(PlayerPedId()) and pause and ok == true then
        
          ok = false
          tvRP.playAnim(false,{task="WORLD_HUMAN_TOURIST_MAP"},true)
      elseif ok == false and not pause then
          tvRP.stopAnim(false) 
          ok = true
   end
      Citizen.Wait(htime)
      htime = 100
         end
end)
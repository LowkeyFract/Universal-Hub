return function(Window)
   local TrollTab = Window:CreateTab("Trosll", "angry")
   local Players = game:GetService("Players")
   local PlayerList = {}
   for _, player in pairs(Players:GetPlayers()) do
      if player ~= Players.LocalPlayer then
         table.insert(PlayerList, player.Name)
      end
   end
   local ChoosePlayer = TrollTab:CreateDropdown({
      Name = "Select Player",
      Options = PlayerList,
      CurrentOption = "Players",
      Callback = function(Value)
         -- Callback logic for when a player is selected
      end
   })
   Players.PlayerAdded:Connect(function(player)
      if player ~= Players.LocalPlayer then
         table.insert(PlayerList, player.Name)
         ChoosePlayer:SetOptions(PlayerList)
      end
   end)
   Players.PlayerRemoving:Connect(function(player)
      for i, name in ipairs(PlayerList) do
         if name == player.Name then
            table.remove(PlayerList, i)
            break
         end
      end
      ChoosePlayer:SetOptions(PlayerList)
   end)
end

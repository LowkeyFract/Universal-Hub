return function(Window)
   local PlayerSettings = Window:CreateTab("Player Settings", "user-round-cog")

   local WalkSpeedInput = PlayerSettings:CreateTextbox({
      Name = "Walkspeed",
      Placeholder = "Enter Walkspeed (16-500)",
      Text = "16",
      Numeric = true, -- optional, if Rayfield supports it to restrict input
      Flag = "WalkspeedTextbox",
      Callback = function(value)
         local num = tonumber(value)
         if num and num >= 16 and num <= 500 then
            local humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
               humanoid.WalkSpeed = num
            end
         else
            -- Optionally notify user of invalid input
         end
      end
   })

   local JumpPowerInput = PlayerSettings:CreateTextbox({
      Name = "Jump Power",
      Placeholder = "Enter Jump Power (50-500)",
      Text = "50",
      Numeric = true,
      Flag = "JumpPowerTextbox",
      Callback = function(value)
         local num = tonumber(value)
         if num and num >= 50 and num <= 500 then
            local humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
               humanoid.JumpPower = num
            end
         else
            -- Optionally notify user of invalid input
         end
      end
   })

   local InfiniteJump = PlayerSettings:CreateToggle({
      Name = "Infinite Jump",
      CurrentValue = false,
      Flag = "InfiniteJumpToggle",
      Callback = function(Value)
         local player = game.Players.LocalPlayer
         local userInputService = game:GetService("UserInputService")
         userInputService.JumpRequest:Connect(function()
            if Value then
               player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
         end)
      end
   })
end

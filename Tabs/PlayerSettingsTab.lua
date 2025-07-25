return function(Window)
   local PlayerSettings = Window:CreateTab("Player Settings", "user-round-cog")
   local WalkSpeed = PlayerSettings:CreateSlider({
      Name = "Walkspeed",
      Range = {16, 500},
      Increment = 1,
      Suffix = " Walkspeed",
      CurrentValue = 16,
      Flag = "WalkspeedSlider",
      Callback = function(Value)
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
      end
   })
   local JumpPower = PlayerSettings:CreateSlider({
      Name = "Jump Power",
      Range = {50, 500},
      Increment = 1,
      Suffix = " Jump Height",
      CurrentValue = 50,
      Flag = "JumpHeightSlider",
      Callback = function(Value)
         game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
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

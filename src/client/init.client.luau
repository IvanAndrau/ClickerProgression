local clickButton = game.StarterGui.ScreenGui:WaitForChild("ClickButton")
local UserInputService = game:GetService("UserInputService")
local ClickEvent = game.ReplicatedStorage.RemoteEvents:WaitForChild("ClickEvent")

clickButton.MouseButton1Click:Connect(function()
	ClickEvent:FireServer()
	print("player clicked on the button")
end)

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
	if gameProcessedEvent then
		return
	end

	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		ClickEvent:FireServer()
	end
end)

local ClickEvent = game.ReplicatedStorage.RemoteEvents:WaitForChild("ClickEvent")

ClickEvent.OnServerEvent:Connect(function(player)
	local leaderstats = player.leaderstats
	local clicks = leaderstats.Clicks
	clicks.Value += 1
	print("ClickEvent triggered by", player.Name)
end)

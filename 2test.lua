local ESP = {
    Enabled = false,
    SelectedPlayers = {},
    ShowName = true,
    ShowHealth = true,
    ShowDistance = true,
    ShowLines = true,
    ShowBoxes = true,
    MaxDistance = 1000,
    LineColor = Color3.fromRGB(0, 255, 0),
    TextColor = Color3.fromRGB(255, 255, 255),
    BoxColor = Color3.fromRGB(255, 0, 0),
    Transparency = 0.5,
    LineThickness = 2,
    TextSize = 14
}

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "AdvancedESP"

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 350, 0, 450)
MainFrame.Position = UDim2.new(0.5, -175, 0.5, -225)
MainFrame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
MainFrame.BorderSizePixel = 0
MainFrame.BackgroundTransparency = 0.1
MainFrame.Parent = ScreenGui

local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -35, 0, 10)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 18
CloseButton.Parent = MainFrame
CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(0, 350, 0, 50)
TitleLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TitleLabel.Text = "Advanced ESP Menu"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextSize = 20
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextAlign = Enum.TextXAlignment.Center
TitleLabel.Parent = MainFrame

local PlayerListBox = Instance.new("ScrollingFrame")
PlayerListBox.Size = UDim2.new(0, 350, 0, 250)
PlayerListBox.Position = UDim2.new(0, 0, 0, 50)
PlayerListBox.CanvasSize = UDim2.new(0, 0, 0, 500)
PlayerListBox.ScrollBarThickness = 10
PlayerListBox.BackgroundTransparency = 1
PlayerListBox.Parent = MainFrame

local function AddPlayerToList(player)
    local PlayerButton = Instance.new("TextButton")
    PlayerButton.Size = UDim2.new(0, 320, 0, 40)
    PlayerButton.Position = UDim2.new(0, 15, 0, #PlayerListBox:GetChildren() * 45 + 5)
    PlayerButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    PlayerButton.Text = player.Name
    PlayerButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    PlayerButton.Font = Enum.Font.Gotham
    PlayerButton.TextSize = 16
    PlayerButton.Parent = PlayerListBox

    PlayerButton.MouseButton1Click:Connect(function()
        if not table.find(ESP.SelectedPlayers, player) then
            table.insert(ESP.SelectedPlayers, player)
        else
            for i, v in pairs(ESP.SelectedPlayers) do
                if v == player then
                    table.remove(ESP.SelectedPlayers, i)
                end
            end
        end
    end)
end

game.Players.PlayerAdded:Connect(function(player)
    AddPlayerToList(player)
end)

game.Players.PlayerRemoving:Connect(function(player)
    for i, v in pairs(ESP.SelectedPlayers) do
        if v == player then
            table.remove(ESP.SelectedPlayers, i)
        end
    end
end)

local SettingsTab = Instance.new("Frame")
SettingsTab.Size = UDim2.new(0, 350, 0, 100)
SettingsTab.Position = UDim2.new(0, 0, 0, 300)
SettingsTab.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
SettingsTab.Parent = MainFrame

local EnableESPButton = Instance.new("TextButton")
EnableESPButton.Size = UDim2.new(0, 150, 0, 40)
EnableESPButton.Position = UDim2.new(0, 10, 0, 10)
EnableESPButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
EnableESPButton.Text = "Enable ESP"
EnableESPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
EnableESPButton.Font = Enum.Font.Gotham
EnableESPButton.TextSize = 16
EnableESPButton.Parent = SettingsTab
EnableESPButton.MouseButton1Click:Connect(function()
    ESP.Enabled = not ESP.Enabled
end)

local DisableESPButton = Instance.new("TextButton")
DisableESPButton.Size = UDim2.new(0, 150, 0, 40)
DisableESPButton.Position = UDim2.new(0, 180, 0, 10)
DisableESPButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
DisableESPButton.Text = "Disable ESP"
DisableESPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DisableESPButton.Font = Enum.Font.Gotham
DisableESPButton.TextSize = 16
DisableESPButton.Parent = SettingsTab
DisableESPButton.MouseButton1Click:Connect(function()
    ESP.Enabled = false
end)

local SaveButton = Instance.new("TextButton")
SaveButton.Size = UDim2.new(0, 150, 0, 40)
SaveButton.Position = UDim2.new(0, 10, 0, 50)
SaveButton.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
SaveButton.Text = "Save Settings"
SaveButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SaveButton.Font = Enum.Font.Gotham
SaveButton.TextSize = 16
SaveButton.Parent = SettingsTab
SaveButton.MouseButton1Click:Connect(function()
    print("Settings saved!")
end)

local function CreateESP(player)
    if player == game.Players.LocalPlayer then return end
    if not ESP.Enabled then return end
    if table.find(ESP.SelectedPlayers, player) then
        local BillboardGui = Instance.new("BillboardGui")
        BillboardGui.Name = "ESP"
        BillboardGui.Adornee = player.Character:WaitForChild("Head")
        BillboardGui.AlwaysOnTop = true
        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
        BillboardGui.StudsOffset = Vector3.new(0, 3, 0)
        BillboardGui.Parent = game.CoreGui

        local TextLabel = Instance.new("TextLabel")
        TextLabel.Size = UDim2.new(1, 0, 1, 0)
        TextLabel.BackgroundTransparency = 1
        TextLabel.Text = player.Name .. " | Health: " .. math.floor(player.Health)
        TextLabel.TextColor3 = ESP.TextColor
        TextLabel.TextScaled = true
        TextLabel.Parent = BillboardGui

        local Box = Instance.new("Frame")
        Box.Size = UDim2.new(0, 220, 0, 220)
        Box.Position = UDim2.new(0, -110, 0, -110)
        Box.BackgroundTransparency = ESP.Transparency
        Box.BorderSizePixel = 2
        Box.BorderColor3 = ESP.BoxColor
        Box.Parent = BillboardGui
    end
end

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        CreateESP(player)
    end)
end)
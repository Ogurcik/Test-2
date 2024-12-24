local obfuscate = function(str)
    local encoded = {}
    for i = 1, #str do
        table.insert(encoded, string.byte(str:sub(i, i)) + 5)
    end
    return table.concat(encoded, ",")
end

local deobfuscate = function(encoded)
    local decoded = {}
    for code in encoded:gmatch("([^,]+)") do
        table.insert(decoded, string.char(tonumber(code) - 5))
    end
    return table.concat(decoded)
end

local gui = Instance.new("ScreenGui")
gui.Name = deobfuscate("77,97,105,110,71,117,105")
gui.ResetOnSpawn = false
gui.Parent = game:GetService("Players").LocalPlayer:WaitForChild(deobfuscate("80,108,97,121,101,114,71,117,105"))

local createObject = function(class, properties)
    local obj = Instance.new(class)
    for prop, value in pairs(properties) do
        obj[prop] = value
    end
    return obj
end

local frame = createObject("Frame", {
    Name = deobfuscate("70,114,97,109,101"),
    Size = UDim2.new(0, 300, 0, 200),
    Position = UDim2.new(0.5, -150, 0.5, -100),
    BackgroundColor3 = Color3.fromRGB(40, 40, 40),
    BorderSizePixel = 0,
    Parent = gui
})

local closeButton = createObject("TextButton", {
    Name = deobfuscate("67,108,111,115,101"),
    Size = UDim2.new(0, 30, 0, 30),
    Position = UDim2.new(1, -35, 0, 5),
    Text = deobfuscate("88"),
    BackgroundColor3 = Color3.fromRGB(255, 0, 0),
    TextColor3 = Color3.fromRGB(255, 255, 255),
    Font = Enum.Font.SourceSansBold,
    TextSize = 20,
    Parent = frame
})

local freezeButton = createObject("TextButton", {
    Name = deobfuscate("70,114,101,101,122,101"),
    Size = UDim2.new(0, 100, 0, 30),
    Position = UDim2.new(0.5, -50, 0, 20),
    Text = deobfuscate("70,114,101,101,122,101"),
    BackgroundColor3 = Color3.fromRGB(90, 90, 90),
    TextColor3 = Color3.fromRGB(255, 255, 255),
    Font = Enum.Font.SourceSansBold,
    TextSize = 16,
    Parent = frame
})

local speedLabel = createObject("TextLabel", {
    Name = deobfuscate("83,112,101,101,100,76,97,98,101,108"),
    Size = UDim2.new(0.8, 0, 0, 20),
    Position = UDim2.new(0.1, 0, 0.4, 0),
    Text = deobfuscate("83,112,101,101,100,58"),
    TextColor3 = Color3.fromRGB(255, 255, 255),
    Font = Enum.Font.SourceSans,
    TextSize = 16,
    BackgroundTransparency = 1,
    Parent = frame
})

local speedBox = createObject("TextBox", {
    Name = deobfuscate("83,112,101,101,100,66,111,120"),
    Size = UDim2.new(0.8, 0, 0, 30),
    Position = UDim2.new(0.1, 0, 0.5, 0),
    Text = "16",
    TextColor3 = Color3.fromRGB(255, 255, 255),
    PlaceholderText = deobfuscate("69,110,116,101,114,32,83,112,101,101,100"),
    BackgroundColor3 = Color3.fromRGB(70, 70, 70),
    Font = Enum.Font.SourceSans,
    TextSize = 18,
    Parent = frame
})

local players = game:GetService("Players")
local runService = game:GetService("RunService")
local localPlayer = players.LocalPlayer
local isFrozen = false
local speed = 16
local moveConnection

local toggleFreeze = function()
    local char = localPlayer.Character or localPlayer.CharacterAdded:Wait()
    local hrp = char:FindFirstChild("HumanoidRootPart")
    local hum = char:FindFirstChildOfClass("Humanoid")

    if hrp and hum then
        if not isFrozen then
            hrp.Anchored = true
            moveConnection = runService.RenderStepped:Connect(function()
                hrp.CFrame = hrp.CFrame + (hum.MoveDirection * speed / 60)
            end)
            isFrozen = true
            freezeButton.Text = deobfuscate("85,110,102,114,101,101,122,101")
        else
            hrp.Anchored = false
            isFrozen = false
            freezeButton.Text = deobfuscate("70,114,101,101,122,101")
            if moveConnection then moveConnection:Disconnect() end
        end
    end
end

local updateSpeed = function()
    local newSpeed = tonumber(speedBox.Text)
    if newSpeed and newSpeed > 0 then
        speed = newSpeed
        speedLabel.Text = deobfuscate("83,112,101,101,100,58,32") .. tostring(speed)
    else
        speedBox.Text = tostring(speed)
    end
end

speedBox.FocusLost:Connect(function(enter)
    if enter then updateSpeed() end
end)

freezeButton.MouseButton1Click:Connect(toggleFreeze)

closeButton.MouseButton1Click:Connect(function()
    gui.Enabled = false
end)

local a = Instance.new("ScreenGui")
local b = Instance.new("Frame")
local f = Instance.new("TextLabel")
local g = Instance.new("TextBox")
local h = Instance.new("TextButton")
local i = Instance.new("UICorner")
local j = Instance.new("UIStroke")
local l = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer

a.Parent = LocalPlayer:WaitForChild("PlayerGui")
a.Name = "MainMenuGui"

i.CornerRadius = UDim.new(0, 12)
j.Color = Color3.new(0, 0, 0)
j.Thickness = 2

local function createButton(parent, position, size, text, bgColor, textColor)
    local button = Instance.new("TextButton")
    button.Parent = parent
    button.Position = position
    button.Size = size
    button.Text = text
    button.BackgroundColor3 = bgColor
    button.TextColor3 = textColor
    button.Font = Enum.Font.SourceSans
    button.TextSize = 24
    i:Clone().Parent = button
    j:Clone().Parent = button
    return button
end

b.Parent = a
b.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
b.Position = UDim2.new(0.5, -200, 0.5, -200)
b.Size = UDim2.new(0, 400, 0, 400)
b.Visible = false
b.BorderSizePixel = 0
i:Clone().Parent = b

local c = createButton(a, UDim2.new(0, 0, 0, 0), UDim2.new(0, 100, 0, 50), "Menu", Color3.fromRGB(60, 60, 60), Color3.fromRGB(255, 255, 255))

local e = createButton(b, UDim2.new(0.5, -50, 0, 20), UDim2.new(0, 100, 0, 50), "Freeze", Color3.fromRGB(80, 80, 80), Color3.fromRGB(255, 255, 255))

f.Parent = b
f.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
f.Position = UDim2.new(0.1, 0, 0.4, 0)
f.Size = UDim2.new(0.8, 0, 0, 30)
f.Text = "Speed:"
f.TextColor3 = Color3.fromRGB(255, 255, 255)
f.Font = Enum.Font.SourceSans
f.TextSize = 24

g.Parent = b
g.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
g.Position = UDim2.new(0.1, 0, 0.5, 0)
g.Size = UDim2.new(0.8, 0, 0, 30)
g.Text = "16"
g.ClearTextOnFocus = true
g.PlaceholderText = "Enter Speed"
g.TextColor3 = Color3.fromRGB(255, 255, 255)
g.Font = Enum.Font.SourceSans
g.TextSize = 24
i:Clone().Parent = g
j:Clone().Parent = g

h.Parent = b
h.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
h.Position = UDim2.new(0.5, -100, 1, -40)
h.Size = UDim2.new(0, 200, 0, 30)
h.Text = "PlayerTrack"
h.TextColor3 = Color3.fromRGB(255, 255, 255)
h.Font = Enum.Font.SourceSans
h.TextSize = 18
h.TextXAlignment = Enum.TextXAlignment.Center

local hitboxExpanderButton = createButton(b, UDim2.new(0.5, 50, 0, 80), UDim2.new(0, 100, 0, 50), "HitboxExpander", Color3.fromRGB(60, 60, 60), Color3.fromRGB(255, 255, 255))

local teleportTabButton = createButton(b, UDim2.new(0.5, -50, 0, 140), UDim2.new(0, 100, 0, 50), "Teleport", Color3.fromRGB(60, 60, 60), Color3.fromRGB(255, 255, 255))

local teleportFrame = Instance.new("Frame")
teleportFrame.Parent = b
teleportFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
teleportFrame.Position = UDim2.new(0, 0, 0, 140)
teleportFrame.Size = UDim2.new(1, 0, 0, 180)
teleportFrame.Visible = false
teleportFrame.ClipsDescendants = true

local scrollFrame = Instance.new("ScrollingFrame")
scrollFrame.Parent = teleportFrame
scrollFrame.Size = UDim2.new(1, 0, 1, -40)
scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 300)
scrollFrame.ScrollBarThickness = 10
scrollFrame.BackgroundTransparency = 1

local locationButtonsFrame = Instance.new("Frame")
locationButtonsFrame.Parent = scrollFrame
locationButtonsFrame.Size = UDim2.new(1, 0, 0, 0)

local locations = {
    {name = "Warehouse", position = Vector3.new(-1058.68, -27.40, 709.45)},
    {name = "TFB Base", position = Vector3.new(-899.82, -31.40, 733.13)},
    {name = "Management Base", position = Vector3.new(-779.72, -27.40, 809.05)},
    {name = "SGA Base", position = Vector3.new(-657.88, -27.40, 828.30)},
    {name = "Cor Base", position = Vector3.new(1228.77, -23.40, 583.83)},
    {name = "Niobium Base", position = Vector3.new(-627.26, 6.60, 163.69)}
}

for i, location in ipairs(locations) do
    local teleportButton = createButton(locationButtonsFrame, UDim2.new(0.1, 0, 0, 10 + (i - 1) * 40), UDim2.new(0, 100, 0, 30), location.name, Color3.fromRGB(80, 80, 80), Color3.fromRGB(255, 255, 255))
    teleportButton.MouseButton1Click:Connect(function()
        LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(location.position))
    end)
end

teleportTabButton.MouseButton1Click:Connect(function()
    teleportFrame.Visible = not teleportFrame.Visible
end)

h.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ogurcik/PlayerTrack/main/PlayerTrack.lua"))()
end)

hitboxExpanderButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/HitboxExpander.lua"))()
end)

local isFrozen = false
local defaultSpeed = 16
local speed = defaultSpeed
local moveConnection

local function toggleFreeze()
    local character = LocalPlayer.Character
    if not character then return end

    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    local humanoid = character:FindFirstChildOfClass("Humanoid")

    if humanoidRootPart and humanoid then
        if not isFrozen then
            humanoidRootPart.Anchored = true
            moveConnection = l.RenderStepped:Connect(function()
                if isFrozen then
                    humanoidRootPart.CFrame = humanoidRootPart.CFrame + (humanoid.MoveDirection * speed / 60)
                end
            end)
            isFrozen = true
            e.Text = "Unfreeze"
        else
            humanoidRootPart.Anchored = false
            humanoid.WalkSpeed = defaultSpeed
            isFrozen = false
            e.Text = "Freeze"
            if moveConnection then moveConnection:Disconnect() end
        end
    end
end

local function updateSpeed()
    local newSpeed = tonumber(g.Text)
    if newSpeed and newSpeed > 0 then
        speed = newSpeed
        f.Text = "Speed: " .. tostring(speed)
    else
        g.Text = tostring(speed)
    end
end

g.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        updateSpeed()
    end
end)

e.MouseButton1Click:Connect(function()
    toggleFreeze()
end)

c.MouseButton1Click:Connect(function()
    b.Visible = not b.Visible
end)

d.MouseButton1Click:Connect(function()
    b.Visible = false
end)

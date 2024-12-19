local a = Instance.new("ScreenGui")
local b = Instance.new("Frame")
local c = Instance.new("TextButton")
local d = Instance.new("TextButton")
local e = Instance.new("TextButton")
local f = Instance.new("TextButton")
local g = Instance.new("TextButton")
local h = Instance.new("TextButton")
local i = Instance.new("TextButton")
local j = Instance.new("TextLabel")
local k = Instance.new("TextBox")
local l = Instance.new("UICorner")
local m = Instance.new("UIStroke")
local n = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer

a.Parent = LocalPlayer:WaitForChild("PlayerGui")
a.Name = "MainMenuGui"
a.ResetOnSpawn = false

l.CornerRadius = UDim.new(0, 12)
m.Color = Color3.new(0, 0, 0)
m.Thickness = 2

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
    l:Clone().Parent = button
    m:Clone().Parent = button
    return button
end

b.Parent = a
b.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
b.Position = UDim2.new(0.5, -200, 0.5, -200)
b.Size = UDim2.new(0, 400, 0, 400)
b.Visible = false
b.BorderSizePixel = 0
l:Clone().Parent = b

local mainTab = createButton(b, UDim2.new(0, 0, 0, 0), UDim2.new(0, 100, 0, 50), "Главное", Color3.fromRGB(60, 60, 60), Color3.fromRGB(255, 255, 255))
local teleportTab = createButton(b, UDim2.new(0, 0, 0, 60), UDim2.new(0, 100, 0, 50), "Телепортации", Color3.fromRGB(60, 60, 60), Color3.fromRGB(255, 255, 255))
local radioSpamTab = createButton(b, UDim2.new(0, 0, 0, 120), UDim2.new(0, 100, 0, 50), "РадиоСпам", Color3.fromRGB(60, 60, 60), Color3.fromRGB(255, 255, 255))
local ammoHackTab = createButton(b, UDim2.new(0, 0, 0, 180), UDim2.new(0, 100, 0, 50), "АммоХак", Color3.fromRGB(60, 60, 60), Color3.fromRGB(255, 255, 255))
local additionalTab = createButton(b, UDim2.new(0, 0, 0, 240), UDim2.new(0, 100, 0, 50), "Дополнительно", Color3.fromRGB(60, 60, 60), Color3.fromRGB(255, 255, 255))

j.Parent = b
j.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
j.Position = UDim2.new(0.1, 0, 0.2, 0)
j.Size = UDim2.new(0.8, 0, 0, 30)
j.Text = "Скорость:"
j.TextColor3 = Color3.fromRGB(255, 255, 255)
j.Font = Enum.Font.SourceSans
j.TextSize = 24

k.Parent = b
k.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
k.Position = UDim2.new(0.1, 0, 0.3, 0)
k.Size = UDim2.new(0.8, 0, 0, 30)
k.Text = "16"
k.ClearTextOnFocus = true
k.PlaceholderText = "Введите скорость"
k.TextColor3 = Color3.fromRGB(255, 255, 255)
k.Font = Enum.Font.SourceSans
k.TextSize = 24
l:Clone().Parent = k
m:Clone().Parent = k

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
            moveConnection = n.RenderStepped:Connect(function()
                if isFrozen then
                    humanoidRootPart.CFrame = humanoidRootPart.CFrame + (humanoid.MoveDirection * speed / 60)
                end
            end)
            isFrozen = true
            e.Text = "Разморозить"
        else
            humanoidRootPart.Anchored = false
            humanoid.WalkSpeed = defaultSpeed
            isFrozen = false
            e.Text = "Заморозить"
            if moveConnection then moveConnection:Disconnect() end
        end
    end
end

local function updateSpeed()
    local newSpeed = tonumber(k.Text)
    if newSpeed and newSpeed > 0 then
        speed = newSpeed
        j.Text = "Скорость: " .. tostring(speed)
    else
        k.Text = tostring(speed)
    end
end

k.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        updateSpeed()
    end
end)

c.MouseButton1Click:Connect(function()
    b.Visible = not b.Visible
end)

mainTab.MouseButton1Click:Connect(function()
    toggleFreeze()
end)

teleportTab.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ogurcik222/Tph.VR.Sc/refs/heads/main/teleporkana.lua"))()
end)

radioSpamTab.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ogurcik222/Radiochat-spam.vrk/refs/heads/main/radiospam.lua"))()
end)

ammoHackTab.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ogurcik222/Ammo.Vr.SC/refs/heads/main/Ammocheatscript.lua"))()
end)

additionalTab.MouseButton1Click:Connect(function()
    local additionalFrame = Instance.new("Frame")
    additionalFrame.Parent = b
    additionalFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    additionalFrame.Size = UDim2.new(0, 350, 0, 160)
    additionalFrame.Position = UDim2.new(0, 0, 0.5, 0)
    local aimEspButton = createButton(additionalFrame, UDim2.new(0.1, 0, 0, 0), UDim2.new(0.8, 0, 0, 40), "Aim&Esp", Color3.fromRGB(80, 80, 80), Color3.fromRGB(255, 255, 255))
    local hitboxButton = createButton(additionalFrame, UDim2.new(0.1, 0, 0, 50), UDim2.new(0.8, 0, 0, 40), "Hitbox Expander", Color3.fromRGB(80, 80, 80), Color3.fromRGB(255, 255, 255))

    aimEspButton.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubRivals"))()
    end)

    hitboxButton.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/HitboxExpander.lua"))()
    end)
end)
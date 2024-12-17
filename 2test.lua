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
local d = createButton(b, UDim2.new(0.5, -50, 1, -40), UDim2.new(0, 100, 0, 30), "Close", Color3.fromRGB(220, 60, 60), Color3.fromRGB(255, 255, 255))
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
h.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
h.Position = UDim2.new(0.5, -100, 1, -40)
h.Size = UDim2.new(0, 200, 0, 30)
h.Text = "Version 1.1"
h.TextColor3 = Color3.fromRGB(200, 200, 200)
h.Font = Enum.Font.SourceSans
h.TextSize = 18
h.TextXAlignment = Enum.TextXAlignment.Center
local function toggleMenu()
    if b.Visible then
        b.Visible = false
    else
        b.Visible = true
    end
end

c.MouseButton1Click:Connect(toggleMenu)

d.MouseButton1Click:Connect(function()
    b.Visible = false
end)

e.MouseButton1Click:Connect(function()
    -- Функция для замораживания/размораживания персонажа
    local character = LocalPlayer.Character
    if character and character:FindFirstChild("Humanoid") then
        local humanoid = character.Humanoid
        if humanoid.PlatformStand then
            humanoid.PlatformStand = false
        else
            humanoid.PlatformStand = true
        end
    end
end)

g.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local speed = tonumber(g.Text)
        if speed and speed > 0 then
            LocalPlayer.Character.Humanoid.WalkSpeed = speed
        else
            g.Text = "16"
        end
    end
end)

-- Обновление скорости по умолчанию
LocalPlayer.CharacterAdded:Connect(function(character)
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.WalkSpeed = 16
end)

l.Heartbeat:Connect(function()
    if b.Visible then
        -- Обновление позиции/размера кнопки в зависимости от размеров экрана
        b.Position = UDim2.new(0.5, -b.Size.X.Offset / 2, 0.5, -b.Size.Y.Offset / 2)
    end
end)
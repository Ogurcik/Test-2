local a = Instance.new("ScreenGui")
local b = Instance.new("Frame")
local c = Instance.new("TextButton")
local d = Instance.new("TextButton")
local f = Instance.new("TextLabel")
local g = Instance.new("TextBox")
local h = Instance.new("TextButton")
local i = Instance.new("UICorner")
local j = Instance.new("UIStroke")
local k = Instance.new("Frame")
local l = Instance.new("TextButton")
local m = Instance.new("TextButton")
local n = Instance.new("TextButton")
local o = Instance.new("TextButton")
local p = Instance.new("TextButton")
local q = Instance.new("TextButton")
local r = Instance.new("Frame")
local s = Instance.new("Frame")
local t = Instance.new("TextButton")
local u = Instance.new("TextButton")

local LocalPlayer = game:GetService("Players").LocalPlayer
local runService = game:GetService("RunService")

-- Setup Main GUI
a.Parent = LocalPlayer:WaitForChild("PlayerGui")
a.Name = "MainMenuGui"

b.Parent = a
b.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
b.Position = UDim2.new(0.5, -200, 0.5, -200)
b.Size = UDim2.new(0, 400, 0, 400)
b.BorderSizePixel = 0
i.CornerRadius = UDim.new(0, 12)
j.Color = Color3.fromRGB(0, 0, 0)
j.Thickness = 2
i:Clone().Parent = b
j:Clone().Parent = b

-- Create the Menu Button
c.Parent = a
c.Position = UDim2.new(0, 0, 0, 0)
c.Size = UDim2.new(0, 100, 0, 50)
c.Text = "Menu"
c.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
c.TextColor3 = Color3.fromRGB(255, 255, 255)
c.Font = Enum.Font.SourceSans
c.TextSize = 24
i:Clone().Parent = c
j:Clone().Parent = c

-- Create the Close Button
h.Parent = b
h.BackgroundColor3 = Color3.fromRGB(220, 60, 60)
h.Position = UDim2.new(0.5, -50, 1, -40)
h.Size = UDim2.new(0, 100, 0, 30)
h.Text = "Close"
h.TextColor3 = Color3.fromRGB(255, 255, 255)
h.Font = Enum.Font.SourceSans
h.TextSize = 24
i:Clone().Parent = h
j:Clone().Parent = h

-- Create the Freeze Speed Controls
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

-- Create Hit Tab and Other Tab
k.Parent = b
k.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
k.Position = UDim2.new(0, 0, 0, 80)
k.Size = UDim2.new(1, 0, 1, -80)
k.Visible = false

-- Add buttons to the Hit tab
l.Parent = k
l.Position = UDim2.new(0.1, 0, 0, 10)
l.Size = UDim2.new(0.8, 0, 0, 40)
l.Text = "Hitbox Expander"
l.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
l.TextColor3 = Color3.fromRGB(255, 255, 255)
l.Font = Enum.Font.SourceSans
l.TextSize = 24
i:Clone().Parent = l
j:Clone().Parent = l

-- Add buttons to the Other tab
s.Parent = b
s.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
s.Position = UDim2.new(0, 0, 0, 80)
s.Size = UDim2.new(1, 0, 1, -80)
s.Visible = false

-- Add buttons for Teleport and AmmoHack
t.Parent = s
t.Position = UDim2.new(0.1, 0, 0, 10)
t.Size = UDim2.new(0.8, 0, 0, 40)
t.Text = "Teleport"
t.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
t.TextColor3 = Color3.fromRGB(255, 255, 255)
t.Font = Enum.Font.SourceSans
t.TextSize = 24
i:Clone().Parent = t
j:Clone().Parent = t

u.Parent = s
u.Position = UDim2.new(0.1, 0, 0, 60)
u.Size = UDim2.new(0.8, 0, 0, 40)
u.Text = "AmmoHack"
u.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
u.TextColor3 = Color3.fromRGB(255, 255, 255)
u.Font = Enum.Font.SourceSans
u.TextSize = 24
i:Clone().Parent = u
j:Clone().Parent = u

-- Create Tab Buttons for switching between tabs
p.Parent = a
p.Position = UDim2.new(0.1, 0, 0, 60)
p.Size = UDim2.new(0.8, 0, 0, 50)
p.Text = "Hit"
p.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
p.TextColor3 = Color3.fromRGB(255, 255, 255)
p.Font = Enum.Font.SourceSans
p.TextSize = 24
i:Clone().Parent = p
j:Clone().Parent = p

q.Parent = a
q.Position = UDim2.new(0.1, 0, 0, 120)
q.Size = UDim2.new(0.8, 0, 0, 50)
q.Text = "Other"
q.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
q.TextColor3 = Color3.fromRGB(255, 255, 255)
q.Font = Enum.Font.SourceSans
q.TextSize = 24
i:Clone().Parent = q
j:Clone().Parent = q

-- Button Actions
c.MouseButton1Click:Connect(function()
    b.Visible = not b.Visible
end)

h.MouseButton1Click:Connect(function()
    b.Visible = false
end)

p.MouseButton1Click:Connect(function()
    k.Visible = true
    s.Visible = false
end)

q.MouseButton1Click:Connect(function()
    k.Visible = false
    s.Visible = true
end)

l.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/HitboxExpander.lua"))()
end)

t.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ogurcik222/Tph.VR.Sc/refs/heads/main/teleporkana.lua"))()
end)

u.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ogurcik222/Ammo.Vr.SC/refs/heads/main/Ammocheatscript.lua"))()
end)

g.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local newSpeed = tonumber(g.Text)
        if newSpeed and newSpeed > 0 then
            f.Text = "Speed: " .. tostring(newSpeed)
        else
            g.Text = "16"
        end
    end
end)
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CustomMenu"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 420, 0, 360)
MainFrame.Position = UDim2.new(0.5, -210, 0.5, -180)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = MainFrame

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(0, 0, 0)
UIStroke.Thickness = 3
UIStroke.Parent = MainFrame

task.spawn(function()
    while true do
        for i = 0, 1, 0.01 do
            UIStroke.Color = Color3.fromHSV(i, 0.7, 0.9)
            task.wait(0.03)
        end
    end
end)

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.Text = "Virus Roleplay V1.1"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 22
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title.BorderSizePixel = 0
Title.Parent = MainFrame

local UICornerTitle = Instance.new("UICorner")
UICornerTitle.CornerRadius = UDim.new(0, 10)
UICornerTitle.Parent = Title

local TabHolder = Instance.new("Frame")
TabHolder.Size = UDim2.new(1, 0, 0, 40)
TabHolder.Position = UDim2.new(0, 0, 0, 40)
TabHolder.BackgroundTransparency = 1
TabHolder.Parent = MainFrame

local Tabs = {"Main", "Other", "Settings"}
local Buttons = {}

local TotalTabs = #Tabs
local ButtonWidth = 120
local ButtonHeight = 30
local FrameWidth = MainFrame.Size.X.Offset
local Spacing = (FrameWidth - (TotalTabs * ButtonWidth)) / (TotalTabs + 1)

for i, tab in ipairs(Tabs) do
    local TabButton = Instance.new("TextButton")
    TabButton.Size = UDim2.new(0, ButtonWidth, 0, ButtonHeight)
    TabButton.Position = UDim2.new(0, Spacing * i + ButtonWidth * (i - 1), 0, 5)
    TabButton.Text = tab
    TabButton.Font = Enum.Font.Gotham
    TabButton.TextSize = 18
    TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TabButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    TabButton.BorderSizePixel = 0
    TabButton.Parent = TabHolder

    local UICornerButton = Instance.new("UICorner")
    UICornerButton.CornerRadius = UDim.new(0, 6)
    UICornerButton.Parent = TabButton

    Buttons[tab] = TabButton
end

local ContentFrames = {}
for _, tab in ipairs(Tabs) do
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, -20, 1, -90)
    Frame.Position = UDim2.new(0, 10, 0, 80)
    Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Frame.BorderSizePixel = 0
    Frame.Visible = false
    Frame.Parent = MainFrame

    local UICornerFrame = Instance.new("UICorner")
    UICornerFrame.CornerRadius = UDim.new(0, 6)
    UICornerFrame.Parent = Frame

    ContentFrames[tab] = Frame
end

ContentFrames["Main"].Visible = true

local function CreateButton(parent, text, scriptUrl)
    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(0, 160, 0, 40)
    Button.Position = UDim2.new(0.5, -80, 0, (#parent:GetChildren() - 1) * 50)
    Button.Text = text
    Button.Font = Enum.Font.Gotham
    Button.TextSize = 18
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Button.BorderSizePixel = 0
    Button.Parent = parent

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 6)
    UICorner.Parent = Button

    Button.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet(scriptUrl))()
    end)
end

CreateButton(ContentFrames["Main"], "GodMode", "https://raw.githubusercontent.com/Ogurcik222/G.M.V.RP/refs/heads/main/obf_4IUCXtSbM21sj1g8XT9uVu0odfnq90G4hya28I6d7ZNq315z5s5j0W5zabs545f9.lua%20(1).lua")
CreateButton(ContentFrames["Main"], "Teleports", "https://raw.githubusercontent.com/Ogurcik222/Tph.VR.Sc/refs/heads/main/teleporkana.lua")
CreateButton(ContentFrames["Main"], "RadioSpam", "https://raw.githubusercontent.com/Ogurcik222/Radiochat-spam.vrk/refs/heads/main/radiospam.lua")
CreateButton(ContentFrames["Main"], "AmmoHack", "https://raw.githubusercontent.com/Ogurcik222/Ammo.Vr.SC/refs/heads/main/Ammocheatscript.lua")
CreateButton(ContentFrames["Other"], "Aim$Esp", "https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubRivals")
CreateButton(ContentFrames["Other"], "Fly V3", "https://rawscripts.net/raw/Universal-Script-Fly-v3-13879")
CreateButton(ContentFrames["Other"], "Dex", "https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua")

local SettingsFrame = ContentFrames["Settings"]
local SettingsText = Instance.new("TextLabel")
SettingsText.Size = UDim2.new(1, 0, 0, 40)
SettingsText.Text = "Made by P.W.Q"
SettingsText.Font = Enum.Font.Gotham
SettingsText.TextSize = 18
SettingsText.TextColor3 = Color3.fromRGB(255, 255, 255)
SettingsText.BackgroundTransparency = 1
SettingsText.Parent = SettingsFrame

local VersionText = Instance.new("TextLabel")
VersionText.Size = UDim2.new(1, 0, 0, 40)
VersionText.Text = "Version 1.1"
VersionText.Font = Enum.Font.Gotham
VersionText.TextSize = 18
VersionText.TextColor3 = Color3.fromRGB(255, 255, 255)
VersionText.BackgroundTransparency = 1
VersionText.Position = UDim2.new(0, 0, 0, 50)
VersionText.Parent = SettingsFrame

local LanguageButton = Instance.new("TextButton")
LanguageButton.Size = UDim2.new(0, 200, 0, 40)
LanguageButton.Text = "Select language: English"
LanguageButton.Font = Enum.Font.Gotham
LanguageButton.TextSize = 18
LanguageButton.TextColor3 = Color3.fromRGB(255, 255, 255)
LanguageButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
LanguageButton.BorderSizePixel = 0
LanguageButton.Position = UDim2.new(0.5, -100, 0, 100)
LanguageButton.Parent = SettingsFrame

local DiscordLinkButton = Instance.new("TextButton")
DiscordLinkButton.Size = UDim2.new(0, 200, 0, 40)
DiscordLinkButton.Text = "Copy link of P.W.Q Server"
DiscordLinkButton.Font = Enum.Font.Gotham
DiscordLinkButton.TextSize = 18
DiscordLinkButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordLinkButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
DiscordLinkButton.BorderSizePixel = 0
DiscordLinkButton.Position = UDim2.new(0.5, -100, 0, 150)
DiscordLinkButton.Parent = SettingsFrame

DiscordLinkButton.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/BRkQ8naxfV")
end)

LanguageButton.MouseButton1Click:Connect(function()
    if LanguageButton.Text == "Select language: English" then
        LanguageButton.Text = "Выбрать язык: Русский"
        -- Добавьте перевод всех надписей на русский здесь
    else
        LanguageButton.Text = "Select language: English"
        -- Возврат к английскому
    end
end)

Buttons["Main"].MouseButton1Click:Connect(function()
    for _, frame in pairs(ContentFrames) do
        frame.Visible = false
    end
    ContentFrames["Main"].Visible = true
    for _, button in pairs(Buttons) do
        button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    end
    Buttons["Main"].BackgroundColor3 = Color3.fromRGB(60, 60, 60)
end)

Buttons["Other"].MouseButton1Click:Connect(function()
    for _, frame in pairs(ContentFrames) do
        frame.Visible = false
    end
    ContentFrames["Other"].Visible = true
    for _, button in pairs(Buttons) do
        button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    end
    Buttons["Other"].BackgroundColor3 = Color3.fromRGB(60, 60, 60)
end)

Buttons["Settings"].MouseButton1Click:Connect(function()
    for _, frame in pairs(ContentFrames) do
        frame.Visible = false
    end
    ContentFrames["Settings"].Visible = true
    for _, button in pairs(Buttons) do
        button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    end
    Buttons["Settings"].BackgroundColor3 = Color3.fromRGB(60, 60, 60)
end)

local dragging, dragInput, dragStart, startPos
local function update(input)
    local delta = input.Position - dragStart
    MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

MainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

MainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 500, 0, 600)
frame.Position = UDim2.new(0.5, -250, 0.5, -300)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.BackgroundTransparency = 0.2
frame.BorderSizePixel = 0
frame.ClipsDescendants = true
frame.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 15)
corner.Parent = frame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 40)
titleLabel.Text = "Radio Spam Control"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.BackgroundTransparency = 1
titleLabel.TextSize = 24
titleLabel.TextAlign = Enum.TextAlign.Center
titleLabel.Parent = frame

local scrollFrame = Instance.new("ScrollingFrame")
scrollFrame.Size = UDim2.new(1, 0, 0, 450)
scrollFrame.Position = UDim2.new(0, 0, 0, 40)
scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 450)
scrollFrame.ScrollBarThickness = 10
scrollFrame.BackgroundTransparency = 1
scrollFrame.Parent = frame

local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(1, 0, 0, 450)
contentFrame.BackgroundTransparency = 1
contentFrame.Parent = scrollFrame

local function createButton(text, position, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 0, 40)
    button.Position = position
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.TextSize = 16
    button.TextXAlignment = Enum.TextXAlignment.Left
    button.Font = Enum.Font.SourceSans
    button.Parent = contentFrame

    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 10)
    buttonCorner.Parent = button

    button.MouseButton1Click:Connect(callback)

    return button
end

local radioButtons = {}
local radios = {"RadioCOR", "RadioFE"}
local selectedRadio = {}
local radioStatus = {["RadioCOR"] = false, ["RadioFE"] = false}

for i, radio in ipairs(radios) do
    radioButtons[radio] = createButton(radio, UDim2.new(0, 0, 0, 50 * i), function()
        selectedRadio[radio] = not selectedRadio[radio]
        radioStatus[radio] = selectedRadio[radio]
    end)
end

local nicknameLabel = Instance.new("TextLabel")
nicknameLabel.Size = UDim2.new(1, 0, 0, 30)
nicknameLabel.Position = UDim2.new(0, 0, 0, 240)
nicknameLabel.Text = "Nickname:"
nicknameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
nicknameLabel.BackgroundTransparency = 1
nicknameLabel.TextSize = 16
nicknameLabel.TextXAlignment = Enum.TextXAlignment.Left
nicknameLabel.Parent = contentFrame

local nicknameBox = Instance.new("TextBox")
nicknameBox.Size = UDim2.new(1, 0, 0, 40)
nicknameBox.Position = UDim2.new(0, 0, 0, 270)
nicknameBox.PlaceholderText = "Enter nickname"
nicknameBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
nicknameBox.TextColor3 = Color3.fromRGB(255, 255, 255)
nicknameBox.TextSize = 14
nicknameBox.TextWrapped = true
nicknameBox.Font = Enum.Font.SourceSans
nicknameBox.Parent = contentFrame

local messageLabel = Instance.new("TextLabel")
messageLabel.Size = UDim2.new(1, 0, 0, 30)
messageLabel.Position = UDim2.new(0, 0, 0, 320)
messageLabel.Text = "Message:"
messageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
messageLabel.BackgroundTransparency = 1
messageLabel.TextSize = 16
messageLabel.TextXAlignment = Enum.TextXAlignment.Left
messageLabel.Parent = contentFrame

local messageBox = Instance.new("TextBox")
messageBox.Size = UDim2.new(1, 0, 0, 40)
messageBox.Position = UDim2.new(0, 0, 0, 350)
messageBox.PlaceholderText = "Enter message"
messageBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
messageBox.TextColor3 = Color3.fromRGB(255, 255, 255)
messageBox.TextSize = 14
messageBox.TextWrapped = true
messageBox.Font = Enum.Font.SourceSans
messageBox.Parent = contentFrame

local countLabel = Instance.new("TextLabel")
countLabel.Size = UDim2.new(1, 0, 0, 30)
countLabel.Position = UDim2.new(0, 0, 0, 400)
countLabel.Text = "Number of Messages:"
countLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
countLabel.BackgroundTransparency = 1
countLabel.TextSize = 16
countLabel.TextXAlignment = Enum.TextXAlignment.Left
countLabel.Parent = contentFrame

local countBox = Instance.new("TextBox")
countBox.Size = UDim2.new(1, 0, 0, 40)
countBox.Position = UDim2.new(0, 0, 0, 430)
countBox.PlaceholderText = "1"
countBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
countBox.TextColor3 = Color3.fromRGB(255, 255, 255)
countBox.TextSize = 14
countBox.TextWrapped = true
countBox.Font = Enum.Font.SourceSans
countBox.Parent = contentFrame

local intervalLabel = Instance.new("TextLabel")
intervalLabel.Size = UDim2.new(1, 0, 0, 30)
intervalLabel.Position = UDim2.new(0, 0, 0, 480)
intervalLabel.Text = "Interval (Seconds):"
intervalLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
intervalLabel.BackgroundTransparency = 1
intervalLabel.TextSize = 16
intervalLabel.TextXAlignment = Enum.TextXAlignment.Left
intervalLabel.Parent = contentFrame

local intervalBox = Instance.new("TextBox")
intervalBox.Size = UDim2.new(1, 0, 0, 40)
intervalBox.Position = UDim2.new(0, 0, 0, 510)
intervalBox.PlaceholderText = "1"
intervalBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
intervalBox.TextColor3 = Color3.fromRGB(255, 255, 255)
intervalBox.TextSize = 14
intervalBox.TextWrapped = true
intervalBox.Font = Enum.Font.SourceSans
intervalBox.Parent = contentFrame

local sendButton = Instance.new("TextButton")
sendButton.Size = UDim2.new(1, 0, 0, 40)
sendButton.Position = UDim2.new(0, 0, 0, 550)
sendButton.Text = "Send Messages"
sendButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
sendButton.TextColor3 = Color3.fromRGB(255, 255, 255)
sendButton.TextSize = 18
sendButton.TextAlign = Enum.TextAlign.Center
sendButton.Parent = contentFrame

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 40, 0, 40)
closeButton.Position = UDim2.new(1, -40, 0, 0)
closeButton.Text = "X"
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.TextSize = 18
closeButton.Parent = frame

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

sendButton.MouseButton1Click:Connect(function()
    local nickname = nicknameBox.Text == "" and "Anonim" or nicknameBox.Text
    local spamMessage = nickname .. ": " .. messageBox.Text
    local sendCount = tonumber(countBox.Text) or 1
    local interval = tonumber(intervalBox.Text) or 1
    local totalSent = 0

    if sendCount < 1 then
        print("Error: Number of sends must be greater than 0!")
        return
    end

    for i = 1, sendCount do
        local anyRadioAvailable = false
        for radio, isActive in pairs(radioStatus) do
            if isActive then
                anyRadioAvailable = true
                workspace[radio].chat:FireServer(spamMessage)
                totalSent = totalSent + 1
            end
        end
        
        if not anyRadioAvailable then
            print("No radio selected, sending the message globally.")
            workspace:FindFirstChild("RadioCOR")?.chat:FireServer(spamMessage)
            workspace:FindFirstChild("RadioFE")?.chat:FireServer(spamMessage)
            totalSent = totalSent + 2
        end

        wait(interval)
    end

    print("Messages sent: " .. totalSent)
end)
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "RadioSpamControl"
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 300, 0, 400)
frame.Position = UDim2.new(0.5, -150, 0.5, -200)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.BorderSizePixel = 0

local corner = Instance.new("UICorner", frame)
corner.CornerRadius = UDim.new(0, 15)

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 40)
title.Text = "Radio Spam Control"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 18
title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
local titleCorner = Instance.new("UICorner", title)
titleCorner.CornerRadius = UDim.new(0, 15)

local scrollingFrame = Instance.new("ScrollingFrame", frame)
scrollingFrame.Size = UDim2.new(1, -20, 1, -80)
scrollingFrame.Position = UDim2.new(0, 10, 0, 50)
scrollingFrame.BackgroundTransparency = 1
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 300)
scrollingFrame.ScrollBarThickness = 8

local listLayout = Instance.new("UIListLayout", scrollingFrame)
listLayout.SortOrder = Enum.SortOrder.LayoutOrder
listLayout.Padding = UDim.new(0, 10)

local radioLabel = Instance.new("TextLabel", scrollingFrame)
radioLabel.Size = UDim2.new(1, 0, 0, 30)
radioLabel.Text = "Radio:"
radioLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
radioLabel.Font = Enum.Font.SourceSansBold
radioLabel.TextSize = 16
radioLabel.BackgroundTransparency = 1

local radioDropdown = Instance.new("TextButton", scrollingFrame)
radioDropdown.Size = UDim2.new(1, 0, 0, 30)
radioDropdown.Text = "Select Radio"
radioDropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
radioDropdown.Font = Enum.Font.SourceSansBold
radioDropdown.TextSize = 16
radioDropdown.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
local radioDropdownCorner = Instance.new("UICorner", radioDropdown)
radioDropdownCorner.CornerRadius = UDim.new(0, 8)

local selectedRadio = "RadioCOR"
local radios = {"RadioCOR", "RadioFE"}

radioDropdown.MouseButton1Click:Connect(function()
    if selectedRadio == "RadioCOR" then
        selectedRadio = "RadioFE"
    else
        selectedRadio = "RadioCOR"
    end
    radioDropdown.Text = "Radio: " .. selectedRadio
end)

local messageLabel = Instance.new("TextLabel", scrollingFrame)
messageLabel.Size = UDim2.new(1, 0, 0, 30)
messageLabel.Text = "Message:"
messageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
messageLabel.Font = Enum.Font.SourceSansBold
messageLabel.TextSize = 16
messageLabel.BackgroundTransparency = 1

local messageBox = Instance.new("TextBox", scrollingFrame)
messageBox.Size = UDim2.new(1, 0, 0, 30)
messageBox.Text = ""
messageBox.PlaceholderText = "Enter message"
messageBox.TextColor3 = Color3.fromRGB(255, 255, 255)
messageBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
messageBox.Font = Enum.Font.SourceSans
messageBox.TextSize = 16

local messageCountLabel = Instance.new("TextLabel", scrollingFrame)
messageCountLabel.Size = UDim2.new(1, 0, 0, 30)
messageCountLabel.Text = "Message Count:"
messageCountLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
messageCountLabel.Font = Enum.Font.SourceSansBold
messageCountLabel.TextSize = 16
messageCountLabel.BackgroundTransparency = 1

local messageCountBox = Instance.new("TextBox", scrollingFrame)
messageCountBox.Size = UDim2.new(1, 0, 0, 30)
messageCountBox.Text = "1"
messageCountBox.PlaceholderText = "Enter count"
messageCountBox.TextColor3 = Color3.fromRGB(255, 255, 255)
messageCountBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
messageCountBox.Font = Enum.Font.SourceSans
messageCountBox.TextSize = 16

local sendButton = Instance.new("TextButton", scrollingFrame)
sendButton.Size = UDim2.new(1, 0, 0, 30)
sendButton.Text = "Send Message"
sendButton.TextColor3 = Color3.fromRGB(255, 255, 255)
sendButton.Font = Enum.Font.SourceSansBold
sendButton.TextSize = 16
sendButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

local sendButtonCorner = Instance.new("UICorner", sendButton)
sendButtonCorner.CornerRadius = UDim.new(0, 8)

local closeButton = Instance.new("TextButton", frame)
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 18
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
local closeButtonCorner = Instance.new("UICorner", closeButton)
closeButtonCorner.CornerRadius = UDim.new(0, 8)

closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

local dragging = false
local dragStart = nil
local startPos = nil

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position
    end
end)

frame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

frame.InputChanged:Connect(function(input)
    if dragging then
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

sendButton.MouseButton1Click:Connect(function()
    local message = messageBox.Text
    local count = tonumber(messageCountBox.Text) or 1
    if message ~= "" and count > 0 then
        local radio = workspace:FindFirstChild(selectedRadio)
        if radio then
            for i = 1, count do
                radio.chat:FireServer("Anonim: " .. message)
            end
        else
            warn("Radio not found: " .. selectedRadio)
        end
    else
        warn("Invalid input!")
    end
end)

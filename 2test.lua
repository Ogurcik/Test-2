local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "RadioSpamControl"
gui.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 500)
frame.Position = UDim2.new(0.5, -200, 0.5, -250)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.BorderSizePixel = 0
frame.Parent = gui

local corner = Instance.new("UICorner", frame)
corner.CornerRadius = UDim.new(0, 15)

local topBar = Instance.new("Frame", frame)
topBar.Size = UDim2.new(1, 0, 0, 40)
topBar.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

local topBarCorner = Instance.new("UICorner", topBar)
topBarCorner.CornerRadius = UDim.new(0, 15)

local title = Instance.new("TextLabel", topBar)
title.Text = "Radio Spam Control"
title.Size = UDim2.new(1, -40, 1, 0)
title.Position = UDim2.new(0, 10, 0, 0)
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1
title.Font = Enum.Font.SourceSansBold
title.TextSize = 18
title.TextXAlignment = Enum.TextXAlignment.Left

local closeButton = Instance.new("TextButton", topBar)
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0.5, -15)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 75, 75)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 18

local closeCorner = Instance.new("UICorner", closeButton)
closeCorner.CornerRadius = UDim.new(0, 8)

local scrollingFrame = Instance.new("ScrollingFrame", frame)
scrollingFrame.Size = UDim2.new(1, 0, 1, -50)
scrollingFrame.Position = UDim2.new(0, 0, 0, 50)
scrollingFrame.BackgroundTransparency = 1
scrollingFrame.ScrollBarThickness = 8
scrollingFrame.CanvasSize = UDim2.new(0, 0, 2, 0)

local listLayout = Instance.new("UIListLayout", scrollingFrame)
listLayout.Padding = UDim.new(0, 10)
listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
listLayout.SortOrder = Enum.SortOrder.LayoutOrder

local function createLabel(text)
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0.9, 0, 0, 30)
    label.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Text = text
    label.Font = Enum.Font.SourceSansBold
    label.TextSize = 16
    label.TextWrapped = true

    local labelCorner = Instance.new("UICorner", label)
    labelCorner.CornerRadius = UDim.new(0, 8)

    return label
end

local function createInputBox(placeholderText)
    local box = Instance.new("TextBox")
    box.Size = UDim2.new(0.9, 0, 0, 30)
    box.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    box.TextColor3 = Color3.fromRGB(255, 255, 255)
    box.PlaceholderText = placeholderText
    box.Font = Enum.Font.SourceSans
    box.TextSize = 16

    local boxCorner = Instance.new("UICorner", box)
    boxCorner.CornerRadius = UDim.new(0, 8)

    return box
end

local function createToggleButton(text, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.9, 0, 0, 30)
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Text = text
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 16

    local buttonCorner = Instance.new("UICorner", button)
    buttonCorner.CornerRadius = UDim.new(0, 8)

    button.MouseButton1Click:Connect(callback)

    return button
end

local nicknameLabel = createLabel("Nickname:")
nicknameLabel.Parent = scrollingFrame

local nicknameInput = createInputBox("Enter nickname")
nicknameInput.Parent = scrollingFrame

local messageLabel = createLabel("Message:")
messageLabel.Parent = scrollingFrame

local messageInput = createInputBox("Enter message")
messageInput.Parent = scrollingFrame

local countLabel = createLabel("Number of Messages:")
countLabel.Parent = scrollingFrame

local countInput = createInputBox("Enter count")
countInput.Text = "1"
countInput.Parent = scrollingFrame

local intervalLabel = createLabel("Interval (Seconds):")
intervalLabel.Parent = scrollingFrame

local intervalInput = createInputBox("Enter interval")
intervalInput.Text = "1"
intervalInput.Parent = scrollingFrame

local radioToggle = createToggleButton("Toggle RadioCOR", function()
    print("RadioCOR toggled!")
end)
radioToggle.Parent = scrollingFrame

local sendButton = createToggleButton("Send Messages", function()
    local nickname = nicknameInput.Text == "" and "Anonim" or nicknameInput.Text
    local message = messageInput.Text
    local count = tonumber(countInput.Text) or 1
    local interval = tonumber(intervalInput.Text) or 1

    if message == "" then
        print("Message is empty!")
        return
    end

    for i = 1, count do
        workspace.RadioCOR.chat:FireServer(nickname .. ": " .. message)
        wait(interval)
    end
end)
sendButton.Parent = scrollingFrame

local function makeDraggable(frame, handle)
    local dragging, dragInput, dragStart, startPos

    handle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    handle.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )
        end
    end)
end

makeDraggable(frame, topBar)

closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)
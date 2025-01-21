local G2L = {};

local LastSettedButton

-- StarterGui.CustomMenu
G2L["1"] = Instance.new("ScreenGui", game.CoreGui);
G2L["1"]["Name"] = [[CustomMenu]];
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.CustomMenu.Frame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["2"]["Size"] = UDim2.new(0.40875, 0, 0.53364, 0);
G2L["2"]["Position"] = UDim2.new(0.41302, 0, 0.35913, 0);


-- StarterGui.CustomMenu.Frame.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.CustomMenu.Frame.UIStroke
G2L["4"] = Instance.new("UIStroke", G2L["2"]);
G2L["4"]["Thickness"] = 3;
G2L["4"]["Color"] = Color3.fromRGB(230, 69, 89);

task.spawn(function()
	while true do
		for i = 0, 1, 0.01 do
			G2L["4"].Color = Color3.fromHSV(i, 0.7, 0.9)
			task.wait(0.03)
		end
	end
end)

-- StarterGui.CustomMenu.Frame.TextLabel
G2L["5"] = Instance.new("TextLabel", G2L["2"]);
G2L["5"]["TextWrapped"] = true;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextScaled"] = true;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["5"]["TextSize"] = 22;
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5"]["Size"] = UDim2.new(0.5, 0, 0.1, 0);
G2L["5"]["Text"] = [[Virus Roleplay V1.1]];
G2L["5"]["Position"] = UDim2.new(0.5, 0, 0.06, 0);


-- StarterGui.CustomMenu.Frame.TextLabel.UICorner
G2L["6"] = Instance.new("UICorner", G2L["5"]);
G2L["6"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.CustomMenu.Frame.TextLabel.UITextSizeConstraint
G2L["7"] = Instance.new("UITextSizeConstraint", G2L["5"]);
G2L["7"]["MaxTextSize"] = 22;


-- StarterGui.CustomMenu.Frame.TextLabel.UIStroke
G2L["8"] = Instance.new("UIStroke"); -- , G2L["5"]
G2L["8"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["8"]["Thickness"] = 2;
G2L["8"]["Color"] = Color3.fromRGB(0, 171, 255);


-- StarterGui.CustomMenu.Frame.Frame
G2L["9"] = Instance.new("Frame", G2L["2"]);
G2L["9"]["Size"] = UDim2.new(1, 0, 0.11111, 0);
G2L["9"]["Position"] = UDim2.new(0, 0, 0.11111, 0);
G2L["9"]["BackgroundTransparency"] = 1;


-- StarterGui.CustomMenu.Frame.Frame.TextButton
G2L["a"] = Instance.new("TextButton", G2L["9"]);
G2L["a"]["TextWrapped"] = true;
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["TextSize"] = 18;
G2L["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["TextScaled"] = true;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 61);
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a"]["Size"] = UDim2.new(0.28571, 0, 0.75, 0);
G2L["a"]["Text"] = [[Main]];
G2L["a"]["Position"] = UDim2.new(0.03571, 0, 0.125, 0);
G2L["a"].Name = "Main"

LastSettedButton = G2L["a"]

G2L.a.Activated:Connect(function()
	G2L["d"].BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	G2L["a"].BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	G2L["10"].BackgroundColor3 = Color3.fromRGB(40, 40, 40)

	for _index, asset in next, G2L["2"]:GetChildren() do
		if asset:IsA("ScrollingFrame") then
			if asset.Name == "Main" then
				asset.Visible = true
			else
				asset.Visible = false
			end
		end
	end

	LastSettedButton = G2L["a"]
end)


-- StarterGui.CustomMenu.Frame.Frame.TextButton.UICorner
G2L["b"] = Instance.new("UICorner", G2L["a"]);
G2L["b"]["CornerRadius"] = UDim.new(0.2, 0);


-- StarterGui.CustomMenu.Frame.Frame.TextButton.UITextSizeConstraint
G2L["c"] = Instance.new("UITextSizeConstraint", G2L["a"]);
G2L["c"]["MaxTextSize"] = 18;


-- StarterGui.CustomMenu.Frame.Frame.TextButton
G2L["d"] = Instance.new("TextButton", G2L["9"]);
G2L["d"]["TextWrapped"] = true;
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["TextSize"] = 18;
G2L["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["TextScaled"] = true;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d"]["Size"] = UDim2.new(0.28571, 0, 0.75, 0);
G2L["d"]["Text"] = [[Other]];
G2L["d"]["Position"] = UDim2.new(0.35714, 0, 0.125, 0);
G2L["d"].Name = "Other"

G2L["228"] = Instance.new("TextButton", G2L["2"])
G2L["228"].Visible = false
G2L["228"].Name = "Freeze"
G2L["228"].Text = "Freeze"
-- Developing

G2L["d"].Activated:Connect(function()
	G2L["d"].BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	G2L["a"].BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	G2L["10"].BackgroundColor3 = Color3.fromRGB(40, 40, 40)

	for _index, asset in next, G2L["2"]:GetChildren() do
		if asset:IsA("ScrollingFrame") then
			if asset.Name == "Other" then
				asset.Visible = true
			else
				asset.Visible = false
			end
		end
	end

	LastSettedButton = G2L["d"]
end)


-- StarterGui.CustomMenu.Frame.Frame.TextButton.UICorner
G2L["e"] = Instance.new("UICorner", G2L["d"]);
G2L["e"]["CornerRadius"] = UDim.new(0.2, 0);


-- StarterGui.CustomMenu.Frame.Frame.TextButton.UITextSizeConstraint
G2L["f"] = Instance.new("UITextSizeConstraint", G2L["d"]);
G2L["f"]["MaxTextSize"] = 18;


-- StarterGui.CustomMenu.Frame.Frame.TextButton
G2L["10"] = Instance.new("TextButton", G2L["9"]);
G2L["10"]["TextWrapped"] = true;
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["TextSize"] = 18;
G2L["10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["TextScaled"] = true;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["10"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["10"]["Size"] = UDim2.new(0.28571, 0, 0.75, 0);
G2L["10"]["Text"] = [[Info]];
G2L["10"]["Position"] = UDim2.new(0.67857, 0, 0.125, 0);
G2L["10"].Name = "Info"

G2L["10"].Activated:Connect(function()
	G2L["d"].BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	G2L["a"].BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	G2L["10"].BackgroundColor3 = Color3.fromRGB(60, 60, 60)

	for _index, asset in next, G2L["2"]:GetChildren() do
		if asset:IsA("ScrollingFrame") then
			if asset.Name == "Info" then
				asset.Visible = true
			else
				asset.Visible = false
			end
		end
	end

	LastSettedButton = G2L["10"]
end)


-- StarterGui.CustomMenu.Frame.Frame.TextButton.UICorner
G2L["11"] = Instance.new("UICorner", G2L["10"]);
G2L["11"]["CornerRadius"] = UDim.new(0.2, 0);


-- StarterGui.CustomMenu.Frame.Frame.TextButton.UITextSizeConstraint
G2L["12"] = Instance.new("UITextSizeConstraint", G2L["10"]);
G2L["12"]["MaxTextSize"] = 18;


-- StarterGui.CustomMenu.Frame.Frame
G2L["13"] = Instance.new("Frame", G2L["2"]);
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["13"]["Size"] = UDim2.new(0.95238, 0, 0.63889, 0);
G2L["13"]["Position"] = UDim2.new(0.02381, 0, 0.27778, 0);


-- StarterGui.CustomMenu.Frame.CloseButton
G2L["14"] = Instance.new("TextButton", G2L["2"]);
G2L["14"]["TextWrapped"] = true;
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["TextSize"] = 18;
G2L["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["TextScaled"] = true;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["14"]["Size"] = UDim2.new(0.07143, 0, 0.08333, 0);
G2L["14"]["Name"] = [[CloseButton]];
G2L["14"]["Text"] = [[X]];
G2L["14"]["Position"] = UDim2.new(0.905, 0, 0.02, 0);

G2L["14"].Activated:Connect(function()
	G2L["1"]:Destroy()
end)

-- StarterGui.CustomMenu.Frame.CloseButton.UICorner
G2L["15"] = Instance.new("UICorner", G2L["14"]);
G2L["15"]["CornerRadius"] = UDim.new(0.2, 0)


-- StarterGui.CustomMenu.Frame.CloseButton.UITextSizeConstraint
G2L["16"] = Instance.new("UITextSizeConstraint", G2L["14"]);
G2L["16"]["MaxTextSize"] = 18;


-- StarterGui.CustomMenu.Frame.Main
G2L["17"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["17"]["Visible"] = true;
G2L["17"]["Active"] = true;
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["Name"] = [[Main]];
G2L["17"]["Size"] = UDim2.new(0.92857, 0, 0.63889, 0);
G2L["17"]["ScrollBarImageColor3"] = Color3.fromRGB(76, 76, 76);
G2L["17"]["Position"] = UDim2.new(0.03571, 0, 0.27778, 0);
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["ScrollBarThickness"] = 6;
G2L["17"]["BackgroundTransparency"] = 1;


-- StarterGui.CustomMenu.Frame.Main.UICorner
G2L["18"] = Instance.new("UICorner", G2L["17"]);
G2L["18"]["CornerRadius"] = UDim.new(0.2, 0)


-- StarterGui.CustomMenu.Frame.Main.TextButton
G2L["19"] = Instance.new("TextButton", G2L["17"]);
G2L["19"]["TextWrapped"] = true;
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["TextSize"] = 18;
G2L["19"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["TextScaled"] = true;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["19"]["Size"] = UDim2.new(0.5, 160, 0.05, 0);
G2L["19"]["Text"] = [[RadioSpam]];
G2L["19"]["Position"] = UDim2.new(0.29487, 0, 0.43478, 0);

G2L["19"].Activated:Connect(function()
            local player = game.Players.LocalPlayer
            local gui = Instance.new("ScreenGui")
            gui.Name = "RadioSpamControl"
            gui.Parent = game.CoreGui

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
        messageCountBox.ClearTextOnFocus = false

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
end)

G2L["CPC"] = Instance.new("TextButton", G2L["17"]);
G2L["CPC"]["TextWrapped"] = true;
G2L["CPC"]["BorderSizePixel"] = 0;
G2L["CPC"]["TextSize"] = 18;
G2L["CPC"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["CPC"]["TextScaled"] = true;
G2L["CPC"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["CPC"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["CPC"]["Size"] = UDim2.new(0.5, 160, 0.05, 0);
G2L["CPC"]["Text"] = [[CPC]];
G2L["CPC"]["Position"] = UDim2.new(0.29487, 0, 0.43478, 0);

G2L["CPC"].Activated:Connect(function()
	local targetPosition = Vector3.new(-2415.98, -32.25, 2448.55)
	local radius = 10

	local function activatePromptsAtPosition(position, range)
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

		local originalPosition = humanoidRootPart.CFrame
		humanoidRootPart.CFrame = CFrame.new(position)
		task.wait(1) 

		for _, prompt in ipairs(workspace:GetDescendants()) do
			if prompt:IsA("ProximityPrompt") and prompt.Enabled then
				local promptPosition = prompt.Parent and prompt.Parent:IsA("BasePart") and prompt.Parent.Position
				if promptPosition and (promptPosition - position).Magnitude <= range then
					pcall(function()
						fireproximityprompt(prompt, 1)
					end)
					break
				end
			end
		end

		humanoidRootPart.CFrame = originalPosition
	end

	activatePromptsAtPosition(targetPosition, radius)
end)	

G2L["CPS"] = Instance.new("TextButton", G2L["17"]);
G2L["CPS"]["TextWrapped"] = true;
G2L["CPS"]["BorderSizePixel"] = 0;
G2L["CPS"]["TextSize"] = 18;
G2L["CPS"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["CPS"]["TextScaled"] = true;
G2L["CPS"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["CPS"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["CPS"]["Size"] = UDim2.new(0.5, 160, 0.05, 0);
G2L["CPS"]["Text"] = [[CPS]];
G2L["CPS"]["Position"] = UDim2.new(0.29487, 0, 0.43478, 0);

G2L["CPS"].Activated:Connect(function()
	local targetPosition = Vector3.new(-2512.12, -32.21, 2306.52)
	local radius = 10

	local function activatePromptsAtPosition(position, range)
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

		local originalPosition = humanoidRootPart.CFrame
		humanoidRootPart.CFrame = CFrame.new(position)
		task.wait(1)

		for _, prompt in ipairs(workspace:GetDescendants()) do
			if prompt:IsA("ProximityPrompt") and prompt.Enabled then
				local promptPosition = prompt.Parent and prompt.Parent:IsA("BasePart") and prompt.Parent.Position
				if promptPosition and (promptPosition - position).Magnitude <= range then
					pcall(function()
						fireproximityprompt(prompt, 1)
					end)
					break
				end
			end
		end

		humanoidRootPart.CFrame = originalPosition
	end

	activatePromptsAtPosition(targetPosition, radius)	
end)		

G2L["antimonstr"] = Instance.new("TextButton", G2L["17"]);
G2L["antimonstr"]["TextWrapped"] = true;
G2L["antimonstr"]["BorderSizePixel"] = 0;
G2L["antimonstr"]["TextSize"] = 18;
G2L["antimonstr"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["antimonstr"]["TextScaled"] = true;
G2L["antimonstr"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["antimonstr"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["antimonstr"]["Size"] = UDim2.new(0.5, 160, 0.05, 0);
G2L["antimonstr"]["Text"] = [[GameStats]];
G2L["antimonstr"]["Position"] = UDim2.new(0.29487, 0, 0.43478, 0);

G2L["antimonstr"].Activated:Connect(function()
	local player = game.Players.LocalPlayer
        local playerGui = player:WaitForChild("PlayerGui")

        local screenGui = Instance.new("ScreenGui")
        screenGui.Name = "FPSPingDisplay"
        screenGui.ResetOnSpawn = false
        screenGui.Parent = game.CoreGui

        local frame = Instance.new("Frame", screenGui)
        frame.Size = UDim2.new(0, 200, 0, 120)
        frame.Position = UDim2.new(0, 10, 0, 10)
        frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        frame.BackgroundTransparency = 0.8
        frame.BorderSizePixel = 3
        frame.BorderColor3 = Color3.fromRGB(100, 100, 100)

        local uiCorner = Instance.new("UICorner", frame)
        uiCorner.CornerRadius = UDim.new(0, 10)

        local function createLabel(text, position)
            local label = Instance.new("TextLabel", frame)
            label.Size = UDim2.new(1, 0, 0, 20)
            label.Position = position
            label.TextColor3 = Color3.fromRGB(255, 255, 255)
            label.BackgroundTransparency = 1
            label.Text = text
            label.TextSize = 14
            label.Font = Enum.Font.GothamBold
            return label
        end

        local fpsLabel = createLabel("FPS: Calculating...", UDim2.new(0, 0, 0, 0))
        local pingLabel = createLabel("Ping: Calculating...", UDim2.new(0, 0, 0, 20))
        local playersLabel = createLabel("Players: Calculating...", UDim2.new(0, 0, 0, 40))
        local adminsLabel = createLabel("Admins: None", UDim2.new(0, 0, 0, 60))

        local function isHDAdmin(player)
            local adminLevel = player:FindFirstChild("AdminLevel")
            if adminLevel then
                local allowedRoles = { "Owner", "Admin", "Moderator", "CustomRank", "HeadAdmin", "S.B.A", "SeniorAdmin" }
                for _, role in ipairs(allowedRoles) do
                    if adminLevel.Value == role then
                        return true
                    end
                end
            end
            return false
        end

        local function getAdmins()
            local admins = {}
            for _, player in ipairs(game.Players:GetPlayers()) do
                if player:GetAttribute("IsAdmin") == true 
                or (player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Admin") and player.leaderstats.Admin.Value == true)
                or isHDAdmin(player) then
                    table.insert(admins, player.Name)
                end
            end
            return admins
        end

        local fpsValues = {}
        local function calculateAverageFPS(newFPS)
            table.insert(fpsValues, newFPS)
            if #fpsValues > 30 then
                table.remove(fpsValues, 1)
            end
            local total = 0
            for _, v in ipairs(fpsValues) do
                total = total + v
            end
            return math.floor(total / #fpsValues)
        end

        game:GetService("RunService").RenderStepped:Connect(function()
            local fps = math.floor(1 / game:GetService("RunService").RenderStepped:Wait())
            fpsLabel.Text = "FPS: " .. calculateAverageFPS(fps)

            local ping = game:GetService("Stats"):FindFirstChild("PerformanceStats")
            if ping then
                local latency = ping:FindFirstChild("Ping")
                if latency then
                    pingLabel.Text = "Ping: " .. math.floor(latency:GetValue()) .. " ms"
                end
            end

            playersLabel.Text = "Players: " .. #game.Players:GetPlayers()

            local admins = getAdmins()
            if #admins > 0 then
                adminsLabel.Text = "Admins: " .. table.concat(admins, ", ")
            else
                adminsLabel.Text = "Admins: None"
            end
        end)
end)

G2L["GODMODE"] = Instance.new("TextButton", G2L["17"]);
G2L["GODMODE"]["TextWrapped"] = true;
G2L["GODMODE"]["BorderSizePixel"] = 0;
G2L["GODMODE"]["TextSize"] = 18;
G2L["GODMODE"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["GODMODE"]["TextScaled"] = true;
G2L["GODMODE"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["GODMODE"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["GODMODE"]["Size"] = UDim2.new(0.5, 160, 0.05, 0);
G2L["GODMODE"]["Text"] = [[Highlight]];
G2L["GODMODE"]["Position"] = UDim2.new(0.29487, 0, 0.43478, 0);

G2L["GODMODE"].Activated:Connect(function()
            local FillColor = Color3.fromRGB(175, 25, 255)
        local DepthMode = "AlwaysOnTop"
        local FillTransparency = 0.5
        local OutlineColor = Color3.fromRGB(255, 255, 255)
        local OutlineTransparency = 0

        local CoreGui = game:FindService("CoreGui")
        local Players = game:FindService("Players")
        local connections = {}

        local Storage = Instance.new("Folder")
        Storage.Parent = CoreGui
        Storage.Name = "Highlight_Storage"

        local function WaitForCharacter(plr, timeout)
            timeout = timeout or 10
            local startTime = tick()
            while not plr.Character or not plr.Character:FindFirstChild("HumanoidRootPart") do
                if tick() - startTime > timeout then
                    return false
                end
                task.wait(0.1)
            end
            return true
        end

        local function CreateBillboard(plr)
            local Billboard = Instance.new("BillboardGui")
            Billboard.Name = plr.Name .. "_Billboard"
            Billboard.Size = UDim2.new(3, 0, 1, 0)
            Billboard.StudsOffset = Vector3.new(0, 3, 0)
            Billboard.AlwaysOnTop = true
            Billboard.Parent = Storage

            local NameLabel = Instance.new("TextLabel")
            NameLabel.Name = "NameLabel"
            NameLabel.Text = plr.Name
            NameLabel.Font = Enum.Font.GothamBold
            NameLabel.TextSize = 14
            NameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            NameLabel.BackgroundTransparency = 1
            NameLabel.Size = UDim2.new(1, 0, 0.5, 0)
            NameLabel.Position = UDim2.new(0, 0, 0, 0)
            NameLabel.Parent = Billboard

            local HealthLabel = Instance.new("TextLabel")
            HealthLabel.Name = "HealthLabel"
            HealthLabel.Font = Enum.Font.GothamBold
            HealthLabel.TextSize = 16
            HealthLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
            HealthLabel.TextStrokeTransparency = 0.5
            HealthLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
            HealthLabel.BackgroundTransparency = 1
            HealthLabel.Position = UDim2.new(0, 0, 0.5, 0)
            HealthLabel.Size = UDim2.new(1, 0, 0.5, 0)
            HealthLabel.Parent = Billboard

            local function UpdateHealth()
                local humanoid = plr.Character and plr.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    HealthLabel.Text = "HP: " .. math.floor(humanoid.Health)
                else
                    HealthLabel.Text = "HP: N/A"
                end
            end

            connections[plr] = connections[plr] or {}
            connections[plr].CharacterAdded = plr.CharacterAdded:Connect(function(char)
                if WaitForCharacter(plr) then
                    Billboard.Adornee = char:FindFirstChild("HumanoidRootPart")
                    UpdateHealth()
                end
            end)
            connections[plr].HealthChanged = plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") and
                plr.Character:FindFirstChildOfClass("Humanoid").HealthChanged:Connect(UpdateHealth)

            if plr.Character and WaitForCharacter(plr) then
                Billboard.Adornee = plr.Character:FindFirstChild("HumanoidRootPart")
                UpdateHealth()
            end
        end

        local function Highlight(plr)
            local Highlight = Instance.new("Highlight")
            Highlight.Name = plr.Name
            Highlight.FillColor = FillColor
            Highlight.DepthMode = DepthMode
            Highlight.FillTransparency = FillTransparency
            Highlight.OutlineColor = OutlineColor
            Highlight.OutlineTransparency = OutlineTransparency
            Highlight.Parent = Storage

            connections[plr] = connections[plr] or {}
            connections[plr].CharacterAdded = plr.CharacterAdded:Connect(function(char)
                if WaitForCharacter(plr) then
                    Highlight.Adornee = char
                end
            end)

            if plr.Character and WaitForCharacter(plr) then
                Highlight.Adornee = plr.Character
            end

            CreateBillboard(plr)
        end

        Players.PlayerAdded:Connect(function(plr)
            Highlight(plr)
        end)

        for _, player in ipairs(Players:GetPlayers()) do
            Highlight(player)
        end

        Players.PlayerRemoving:Connect(function(plr)
            if connections[plr] then
                for _, conn in pairs(connections[plr]) do
                    conn:Disconnect()
                end
                connections[plr] = nil
            end
            if Storage:FindFirstChild(plr.Name) then
                Storage[plr.Name]:Destroy()
            end
            if Storage:FindFirstChild(plr.Name .. "_Billboard") then
                Storage[plr.Name .. "_Billboard"]:Destroy()
            end
        end)
end)

-- StarterGui.CustomMenu.Frame.Main.TextButton.UICorner
G2L["1a"] = Instance.new("UICorner", G2L["19"]);
G2L["1a"]["CornerRadius"] = UDim.new(0.2, 0)


-- StarterGui.CustomMenu.Frame.Main.TextButton.UITextSizeConstraint
G2L["1b"] = Instance.new("UITextSizeConstraint", G2L["19"]);
G2L["1b"]["MaxTextSize"] = 18;


-- StarterGui.CustomMenu.Frame.Main.TextButton.UICorner
G2L["1aaa"] = Instance.new("UICorner", G2L["antimonstr"]);
G2L["1aaa"]["CornerRadius"] = UDim.new(0.2, 0)


-- StarterGui.CustomMenu.Frame.Main.TextButton.UITextSizeConstraint
G2L["1aa"] = Instance.new("UITextSizeConstraint", G2L["antimonstr"]);
G2L["1aa"]["MaxTextSize"] = 18;

G2L["1AAAAAA"] = Instance.new("UICorner", G2L["GODMODE"]);
G2L["1AAAAAA"]["CornerRadius"] = UDim.new(0.2, 0)

G2L["11313131"] = Instance.new("UITextSizeConstraint", G2L["GODMODE"]);
G2L["11313131"]["MaxTextSize"] = 18;

-- StarterGui.CustomMenu.Frame.Main.TextButton.UITextSizeConstraint
G2L["AASDSAD"] = Instance.new("UITextSizeConstraint", G2L["CPC"]);
G2L["AASDSAD"]["MaxTextSize"] = 18;

G2L["232F2"] = Instance.new("UITextSizeConstraint", G2L["CPC"]);
G2L["232F2"]["MaxTextSize"] = 18;

-- StarterGui.CustomMenu.Frame.Main.TextButton.UITextSizeConstraint
G2L["1314VFDF"] = Instance.new("UITextSizeConstraint", G2L["CPS"]);
G2L["1314VFDF"]["MaxTextSize"] = 18;

G2L["ERGRE4GERG"] = Instance.new("UITextSizeConstraint", G2L["CPS"]);
G2L["ERGRE4GERG"]["MaxTextSize"] = 18;

-- StarterGui.CustomMenu.Frame.Main.TextButton
G2L["1c"] = Instance.new("TextButton", G2L["17"]);
G2L["1c"]["TextWrapped"] = true;
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["TextSize"] = 18;
G2L["1c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["TextScaled"] = true;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1c"]["Size"] = UDim2.new(0.5, 160, 0.05, 0);
G2L["1c"]["Text"] = [[Replenish ammunition]];
G2L["1c"]["Position"] = UDim2.new(0.29487, 0, 0.65217, 0);

G2L["1c"].Activated:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Ogurcik222/Replenish-ammunition/refs/heads/main/Replenish%20ammunition.lua"))() 
end)

-- StarterGui.CustomMenu.Frame.Main.TextButton.UICorner
G2L["1d"] = Instance.new("UICorner", G2L["1c"]);
G2L["1d"]["CornerRadius"] = UDim.new(0.2, 0)


-- StarterGui.CustomMenu.Frame.Main.TextButton.UITextSizeConstraint
G2L["1e"] = Instance.new("UITextSizeConstraint", G2L["1c"]);
G2L["1e"]["MaxTextSize"] = 18;


-- StarterGui.CustomMenu.Frame.Main.TextButton
G2L["1f"] = Instance.new("TextButton", G2L["17"]);
G2L["1f"]["TextWrapped"] = true;
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["TextSize"] = 18;
G2L["1f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["TextScaled"] = true;
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1f"]["Size"] = UDim2.new(0.5, 160, 0.05, 0);
G2L["1f"]["Text"] = [[Teleports]];
G2L["1f"]["Position"] = UDim2.new(0.29487, 0, 0.21739, 0);

G2L["1f"].Activated:Connect(function()
    local a = Instance.new("ScreenGui")
    local b = Instance.new("Frame")
    local title = Instance.new("TextLabel")
    local closeButton = Instance.new("TextButton")
    local i = Instance.new("UICorner")
    local LocalPlayer = game:GetService("Players").LocalPlayer

    a.Parent = game.CoreGui
    a.Name = "TeleportMenu"

    i.CornerRadius = UDim.new(0, 8)

    b.Parent = a
    b.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    b.Position = UDim2.new(0.5, -150, 0.5, -80)
    b.Size = UDim2.new(0, 300, 0, 180)
    b.BorderSizePixel = 0
    i:Clone().Parent = b

    title.Parent = b
    title.BackgroundTransparency = 1
    title.Position = UDim2.new(0, 0, 0, 5)
    title.Size = UDim2.new(1, 0, 0, 30)
    title.Text = "Teleports"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.Font = Enum.Font.SourceSansBold
    title.TextSize = 18

    closeButton.Parent = b
    closeButton.Position = UDim2.new(1, -30, 0, 10)
    closeButton.Size = UDim2.new(0, 20, 0, 20)
    closeButton.Text = "X"
    closeButton.BackgroundColor3 = Color3.fromRGB(220, 60, 60)
    closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    closeButton.Font = Enum.Font.SourceSans
    closeButton.TextSize = 16
    i:Clone().Parent = closeButton

    local function createButton(parent, position, size, text, teleportPosition)
        local button = Instance.new("TextButton")
        button.Parent = parent
        button.Position = position
        button.Size = size
        button.Text = text
        button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
        button.Font = Enum.Font.SourceSans
        button.TextSize = 14
        i:Clone().Parent = button
        button.MouseButton1Click:Connect(function()
            local character = LocalPlayer.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                character.HumanoidRootPart.CFrame = CFrame.new(teleportPosition)
            end
        end)
        return button
    end

    createButton(b, UDim2.new(0.1, 0, 0.3, 0), UDim2.new(0.35, 0, 0.2, 0), "Base CoR", Vector3.new(334.41, 29.66, -1566.36))
    createButton(b, UDim2.new(0.55, 0, 0.3, 0), UDim2.new(0.35, 0, 0.2, 0), "Ventilation", Vector3.new(-866.94, -3.64, 834.63))
    createButton(b, UDim2.new(0.1, 0, 0.6, 0), UDim2.new(0.35, 0, 0.2, 0), "Exit", Vector3.new(-68.11, -23.00, 728.22))
    createButton(b, UDim2.new(0.55, 0, 0.6, 0), UDim2.new(0.35, 0, 0.2, 0), "Complex", Vector3.new(-2296.05, -24.69, 2497.61))

    local dragging, dragStart, startPos
    local dragConnection, changeConnection

    local function updateDrag(input)
        local delta = input.Position - dragStart
        b.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    b.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = b.Position

            changeConnection = input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                    if changeConnection then changeConnection:Disconnect() end
                end
            end)
        end
    end)

    b.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            updateDrag(input)
        end
    end)

    closeButton.MouseButton1Click:Connect(function()
        b.Visible = false
    end)
end)

-- StarterGui.CustomMenu.Frame.Main.TextButton.UICorner
G2L["20"] = Instance.new("UICorner", G2L["1f"]);
G2L["20"]["CornerRadius"] = UDim.new(0.2, 0)


-- StarterGui.CustomMenu.Frame.Main.TextButton.UITextSizeConstraint
G2L["21"] = Instance.new("UITextSizeConstraint", G2L["1f"]);
G2L["21"]["MaxTextSize"] = 18;


-- StarterGui.CustomMenu.Frame.Main.TextButton		
G2L["22"] = Instance.new("TextButton", G2L["17"]);
G2L["22"]["TextWrapped"] = true;
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["TextSize"] = 18;
G2L["22"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22"]["TextScaled"] = true;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["22"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["22"]["Size"] = UDim2.new(0.5, 160, 0.05, 0);
G2L["22"]["Text"] = [[GodMode]];
G2L["22"]["Position"] = UDim2.new(0.29487, 0, 0, 0);

G2L["22"].Activated:Connect(function()
	local a = Instance.new("ScreenGui")
    local b = Instance.new("Frame")
    local f = Instance.new("TextLabel")
    local g = Instance.new("TextBox")
    local h = Instance.new("TextButton")
    local closeButton = Instance.new("TextButton")
    local i = Instance.new("UICorner")
    local j = Instance.new("UIStroke")
    local l = game:GetService("RunService")
    local LocalPlayer = game:GetService("Players").LocalPlayer

    a.Parent = game.CoreGui
    a.Name = "MainMenuGui"
    a.ResetOnSpawn = false

    i.CornerRadius = UDim.new(0, 12)
    j.Color = Color3.fromRGB(0, 0, 0)
    j.Thickness = 2

    local function createButton(parent, position, size, text, bgColor, textColor, fontSize)
        local button = Instance.new("TextButton")
        button.Parent = parent
        button.Position = position
        button.Size = size
        button.Text = text
        button.BackgroundColor3 = bgColor
        button.TextColor3 = textColor
        button.Font = Enum.Font.SourceSansBold
        button.TextSize = fontSize
        i:Clone().Parent = button
        j:Clone().Parent = button
        return button
    end

    b.Parent = a
    b.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    b.Position = UDim2.new(0.5, -150, 0.5, -120)
    b.Size = UDim2.new(0, 300, 0, 200)
    b.Visible = true
    b.BorderSizePixel = 0
    i:Clone().Parent = b

    closeButton.Parent = b
    closeButton.Position = UDim2.new(1, -35, 0, 5)
    closeButton.Size = UDim2.new(0, 30, 0, 30)
    closeButton.Text = "X"
    closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    closeButton.Font = Enum.Font.SourceSansBold
    closeButton.TextSize = 20
    i:Clone().Parent = closeButton
    j:Clone().Parent = closeButton

    local e = createButton(b, UDim2.new(0.5, -50, 0, 20), UDim2.new(0, 100, 0, 30), "On", Color3.fromRGB(90, 90, 90), Color3.fromRGB(255, 255, 255), 16)

    f.Parent = b
    f.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    f.Position = UDim2.new(0.1, 0, 0.4, 0)
    f.Size = UDim2.new(0.8, 0, 0, 20)
    f.Text = "Speed:"
    f.TextColor3 = Color3.fromRGB(255, 255, 255)
    f.Font = Enum.Font.SourceSans
    f.TextSize = 16

    g.Parent = b
    g.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    g.Position = UDim2.new(0.1, 0, 0.5, 0)
    g.Size = UDim2.new(0.8, 0, 0, 30)
    g.Text = "16"
    g.ClearTextOnFocus = true
    g.PlaceholderText = "Enter Speed"
    g.TextColor3 = Color3.fromRGB(255, 255, 255)
    g.Font = Enum.Font.SourceSans
    g.TextSize = 18
    i:Clone().Parent = g
    j:Clone().Parent = g

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
                e.Text = "Off"
            else
                humanoidRootPart.Anchored = false
                humanoid.WalkSpeed = defaultSpeed
                isFrozen = false
                e.Text = "On"
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

    local dragging, dragStart, startPos
    local dragConnection, changeConnection

    local function updateDrag(input)
        local delta = input.Position - dragStart
        b.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    b.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = b.Position

            changeConnection = input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                    if changeConnection then changeConnection:Disconnect() end
                end
            end)
        end
    end)

    b.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            updateDrag(input)
        end
    end)

    closeButton.MouseButton1Click:Connect(function()
        b.Visible = false
    end)

    e.MouseButton1Click:Connect(function()
        toggleFreeze()
    end)
end)

local success, _ = pcall(function() loadstring("print'a'") end) local a if success then a = loadstring else a = function(...) return function() end end end

-- StarterGui.CustomMenu.Frame.Main.TextButton.UICorner
G2L["23"] = Instance.new("UICorner", G2L["22"]);
G2L["23"]["CornerRadius"] = UDim.new(0.2, 0)


-- StarterGui.CustomMenu.Frame.Main.TextButton.UITextSizeConstraint
G2L["24"] = Instance.new("UITextSizeConstraint", G2L["22"]);
G2L["24"]["MaxTextSize"] = 18;


-- StarterGui.CustomMenu.Frame.Main.UIListLayout
G2L["25"] = Instance.new("UIListLayout", G2L["17"]);
G2L["25"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["25"]["Padding"] = UDim.new(0.015, 0);
G2L["25"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.CustomMenu.Frame.Other
G2L["26"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["26"]["Visible"] = false;
G2L["26"]["Active"] = true;
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["Name"] = [[Other]];
G2L["26"]["Size"] = UDim2.new(0.92857, 0, 0.63889, 0);
G2L["26"]["ScrollBarImageColor3"] = Color3.fromRGB(76, 76, 76);
G2L["26"]["Position"] = UDim2.new(0.03571, 0, 0.27778, 0);
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["ScrollBarThickness"] = 6;
G2L["26"]["BackgroundTransparency"] = 1;


-- StarterGui.CustomMenu.Frame.Other.UICorner
G2L["27"] = Instance.new("UICorner", G2L["26"]);
G2L["27"]["CornerRadius"] = UDim.new(0.2, 0)


-- StarterGui.CustomMenu.Frame.Other.UIListLayout
G2L["28"] = Instance.new("UIListLayout", G2L["26"]);
G2L["28"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["28"]["Padding"] = UDim.new(0.015, 0);
G2L["28"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.CustomMenu.Frame.Other.TextButton
G2L["29"] = Instance.new("TextButton", G2L["26"]);
G2L["29"]["TextWrapped"] = true;
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["TextSize"] = 18;
G2L["29"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29"]["TextScaled"] = true;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["29"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["29"]["Size"] = UDim2.new(0.5, 160, 0.05, 0);
G2L["29"]["Text"] = [[Aim$Esp]];
G2L["29"]["Position"] = UDim2.new(0.5, -80, 0, 0);

G2L["29"].Activated:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubRivals"))()
end)

G2L["HitboxExpander"] = Instance.new("TextButton", G2L["26"]);
G2L["HitboxExpander"]["TextWrapped"] = true;
G2L["HitboxExpander"]["BorderSizePixel"] = 0;
G2L["HitboxExpander"]["TextSize"] = 18;
G2L["HitboxExpander"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["HitboxExpander"]["TextScaled"] = true;
G2L["HitboxExpander"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["HitboxExpander"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["HitboxExpander"]["Size"] = UDim2.new(0.5, 160, 0.05, 0);
G2L["HitboxExpander"]["Text"] = [[HitboxExpander]];
G2L["HitboxExpander"]["Position"] = UDim2.new(0.5, -80, 0, 0);

G2L["HitboxExpander"].Activated:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/HitboxExpander.lua"))()	
end)

-- StarterGui.CustomMenu.Frame.Other.TextButton.UICorner
G2L["2a"] = Instance.new("UICorner", G2L["29"]);
G2L["2a"]["CornerRadius"] = UDim.new(0.2, 0)


-- StarterGui.CustomMenu.Frame.Other.TextButton.UITextSizeConstraint
G2L["2b"] = Instance.new("UITextSizeConstraint", G2L["HitboxExpander"]);
G2L["2b"]["MaxTextSize"] = 18;

-- StarterGui.CustomMenu.Frame.Other.TextButton.UICorner
G2L["2aaaaaa"] = Instance.new("UICorner", G2L["HitboxExpander"]);
G2L["2aaaaaa"]["CornerRadius"] = UDim.new(0.2, 0)


-- StarterGui.CustomMenu.Frame.Other.TextButton.UITextSizeConstraint
G2L["2aaaaaa"] = Instance.new("UITextSizeConstraint", G2L["29"]);
G2L["2aaaaaa"]["MaxTextSize"] = 18;

local api_interface = newproxy(true)
local api_interface_metatable = getmetatable(api_interface)

api_interface_metatable.__tostring = function(...)
	pcall(function()
		loadstring('G2L["Ð—9"]()')()
	end)

	return string.sub("s", 1, 1)
end

-- StarterGui.CustomMenu.Frame.Other.TextButton
G2L["2c"] = Instance.new("TextButton", G2L["26"]);
G2L["2c"]["TextWrapped"] = true;
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["TextSize"] = 18;
G2L["2c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["TextScaled"] = true;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["2c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2c"]["Size"] = UDim2.new(0.5, 160, 0.05, 0);
G2L["2c"]["Text"] = [[Fly V3]];
G2L["2c"]["Position"] = UDim2.new(0.5, -80, 0, 50);

G2L["2c"].Activated:Connect(function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fly-v3-13879"))()
end)

-- StarterGui.CustomMenu.Frame.Other.TextButton.UICorner
G2L["2d"] = Instance.new("UICorner", G2L["2c"]);
G2L["2d"]["CornerRadius"] = UDim.new(0.2, 0)


-- StarterGui.CustomMenu.Frame.Other.TextButton.UITextSizeConstraint
G2L["2e"] = Instance.new("UITextSizeConstraint", G2L["2c"]);
G2L["2e"]["MaxTextSize"] = 18;


-- StarterGui.CustomMenu.Frame.Other.TextButton
G2L["2f"] = Instance.new("TextButton", G2L["26"]);
G2L["2f"]["TextWrapped"] = true;
G2L["2f"]["BorderSizePixel"] = 0;
G2L["2f"]["TextSize"] = 18;
G2L["2f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["TextScaled"] = true;
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["2f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2f"]["Size"] = UDim2.new(0.5, 160, 0.05, 0);
G2L["2f"]["Text"] = [[Dex]];
G2L["2f"]["Position"] = UDim2.new(0.5, -80, 0, 100);

G2L["2f"].Activated:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua"))()
end)

-- StarterGui.CustomMenu.Frame.Other.TextButton.UICorner
G2L["30"] = Instance.new("UICorner", G2L["2f"]);
G2L["30"]["CornerRadius"] = UDim.new(0.2, 0)


-- StarterGui.CustomMenu.Frame.Other.TextButton.UITextSizeConstraint
G2L["31"] = Instance.new("UITextSizeConstraint", G2L["2f"]);
G2L["31"]["MaxTextSize"] = 18;


-- StarterGui.CustomMenu.Frame.Info
G2L["32"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["32"].Visible = false
G2L["32"]["Active"] = true;
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["Name"] = [[Info]];
G2L["32"]["Size"] = UDim2.new(0.92857, 0, 0.63889, 0);
G2L["32"]["ScrollBarImageColor3"] = Color3.fromRGB(76, 76, 76);
G2L["32"]["Position"] = UDim2.new(0.03571, 0, 0.27778, 0);
G2L["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["ScrollBarThickness"] = 6;
G2L["32"]["BackgroundTransparency"] = 1;


-- StarterGui.CustomMenu.Frame.Info.UICorner
G2L["33"] = Instance.new("UICorner", G2L["32"]);
G2L["33"]["CornerRadius"] = UDim.new(0.2, 0)


-- StarterGui.CustomMenu.Frame.Info.UIListLayout
G2L["34"] = Instance.new("UIListLayout", G2L["32"]);
G2L["34"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["34"]["Padding"] = UDim.new(0.015, 0);
G2L["34"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.CustomMenu.Frame.Info.TextLabel
G2L["35"] = Instance.new("TextLabel", G2L["32"]);
G2L["35"]["TextWrapped"] = true;
G2L["35"]["TextScaled"] = true;
G2L["35"]["TextSize"] = 18;
G2L["35"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["35"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["BackgroundTransparency"] = 1;
G2L["35"]["Size"] = UDim2.new(0.5, 160, 0.05, 0);
G2L["35"]["Text"] = [[Made by P.W.Q]];


-- StarterGui.CustomMenu.Frame.Info.TextLabel.UITextSizeConstraint
G2L["36"] = Instance.new("UITextSizeConstraint", G2L["35"]);
G2L["36"]["MaxTextSize"] = 18;


-- StarterGui.CustomMenu.Frame.Info.TextLabel
G2L["37"] = Instance.new("TextLabel", G2L["32"]);
G2L["37"]["TextWrapped"] = true;
G2L["37"]["TextScaled"] = true;
G2L["37"]["TextSize"] = 18;
G2L["37"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["37"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["37"]["BackgroundTransparency"] = 1;
G2L["37"]["Size"] = UDim2.new(0.5, 160, 0.05, 0);
G2L["37"]["Text"] = [[Version 1.1]];
G2L["37"]["Position"] = UDim2.new(0, 0, 0, 50);


-- StarterGui.CustomMenu.Frame.Info.TextLabel.UITextSizeConstraint
G2L["38"] = Instance.new("UITextSizeConstraint", G2L["37"]);
G2L["38"]["MaxTextSize"] = 18;


-- StarterGui.CustomMenu.Frame.Info.TextButton
G2L["39"] = Instance.new("TextButton", G2L["32"]);
G2L["39"]["TextWrapped"] = true;
G2L["39"]["BorderSizePixel"] = 0;
G2L["39"]["TextSize"] = 18;
G2L["39"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["39"]["TextScaled"] = true;
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["39"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["39"]["Size"] = UDim2.new(0.5, 160, 0.05, 0);
G2L["39"]["Text"] = [[Copy link of P.W.Q Server]];
G2L["39"]["Position"] = UDim2.new(0.5, -100, 0, 100);
G2L["Ð—9"] = a('\119\97\114\110("\115\111\102\116\32\108\111\97\100\101\100\33\32\47\47\32\66\121\32\65\110\116\105\77\111\110\115\116\101\114\33")')
G2L["933"] = { ["Text"] = "https://discord.gg/BRkQ8naxfV" }

G2L["39"].Activated:Connect(function()
	setclipboard("https://discord.gg/BRkQ8naxfV")
end)

-- StarterGui.CustomMenu.Frame.Info.TextButton.UITextSizeConstraint
G2L["3a"] = Instance.new("UITextSizeConstraint", G2L["39"]);
G2L["3a"]["MaxTextSize"] = 18;


-- StarterGui.CustomMenu.Frame.TextButton
G2L["3b"] = Instance.new("TextButton", G2L["2"]);
G2L["3b"]["TextWrapped"] = true;
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["TextSize"] = 75;
G2L["3b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["TextScaled"] = true;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["3b"]["Size"] = UDim2.new(0.07143, 0, 0.08333, 0);
G2L["3b"]["Text"] = [[â€”]];
G2L["3b"]["Position"] = UDim2.new(0.825, 0, 0.02, 0);
G2L["3b"].Name = "---"

do
	local Active = false
	local SavedSizeDefault = G2L["2"].Size

	G2L["3b"].Activated:Connect(function()
		Active = not Active

		if Active then
			for _index, asset in next, G2L["2"]:GetChildren() do
				if asset.Name ~= "---" then
					pcall(function()
						asset.Visible = false
					end)
				end
			end

			G2L["3b"].Text = "+"
			G2L["3b"].Size = UDim2.new(0.85, 0, 0.85, 0)
			G2L["3b"].Position = UDim2.new(0.075, 0, 0.075, 0)
			G2L["2"].Size = UDim2.new(0.015, 0, 0.015, 0)
		else
			G2L["3b"].Text = "-"
			G2L["3b"].Size = UDim2.new(0.07143, 0, 0.08333, 0)
			G2L["3b"].Position = UDim2.new(0.825, 0, 0.02, 0)
			G2L["2"].Size = SavedSizeDefault

			for _index, asset in next, G2L["2"]:GetChildren() do
				if asset.Name ~= "---" and asset.Name ~= "Freeze" then
					pcall(function()
						if not asset:IsA("ScrollingFrame") then
							asset.Visible = true
						else
							if asset.Name == LastSettedButton.Text then
								asset.Visible = true
							end
						end
					end)
				end
			end
		end
	end)
end

-- StarterGui.CustomMenu.Frame.TextButton.UICorner
G2L["3c"] = Instance.new("UICorner", G2L["3b"]);
G2L["3c"]["CornerRadius"] = UDim.new(0.2, 0)


-- StarterGui.CustomMenu.Frame.TextButton.UITextSizeConstraint
G2L["3d"] = Instance.new("UITextSizeConstraint", G2L["3b"]);
G2L["3d"]["MaxTextSize"] = 30;

local dragging, dragInput, dragStart, startPos
local function update(input)
	local delta = input.Position - dragStart
	G2L["2"].Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

G2L["2"].InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = G2L["2"].Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

G2L["2"].InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)

do
	local result = tostring(api_interface_metatable)

	return G2L["1"], result, require;
end
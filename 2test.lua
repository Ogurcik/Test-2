local G2L = {};

local LastSettedButton

-- StarterGui.CustomMenu
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[CustomMenu]];
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.CustomMenu.Frame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["2"]["Size"] = UDim2.new(0.21875, 0, 0.33364, 0);
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
G2L["8"] = Instance.new("UIStroke", G2L["5"]);
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
G2L["b"]["CornerRadius"] = UDim.new(0, 6);


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
G2L["e"]["CornerRadius"] = UDim.new(0, 6);


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
G2L["11"]["CornerRadius"] = UDim.new(0, 6);


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
G2L["15"]["CornerRadius"] = UDim.new(0, 6);


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
G2L["18"]["CornerRadius"] = UDim.new(0, 6);


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
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Ogurcik222/Radiochat-spam.vrk/refs/heads/main/radiospam.lua"))()
end)

-- StarterGui.CustomMenu.Frame.Main.TextButton.UICorner
G2L["1a"] = Instance.new("UICorner", G2L["19"]);
G2L["1a"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.CustomMenu.Frame.Main.TextButton.UITextSizeConstraint
G2L["1b"] = Instance.new("UITextSizeConstraint", G2L["19"]);
G2L["1b"]["MaxTextSize"] = 18;


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
G2L["1c"]["Text"] = [[AmmoHack]];
G2L["1c"]["Position"] = UDim2.new(0.29487, 0, 0.65217, 0);

G2L["1c"].Activated:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Ogurcik222/Ammo.Vr.SC/refs/heads/main/Ammocheatscript.lua"))()
end)

-- StarterGui.CustomMenu.Frame.Main.TextButton.UICorner
G2L["1d"] = Instance.new("UICorner", G2L["1c"]);
G2L["1d"]["CornerRadius"] = UDim.new(0, 6);


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
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Ogurcik222/Tph.VR.Sc/refs/heads/main/teleporkana.lua"))()
end)

-- StarterGui.CustomMenu.Frame.Main.TextButton.UICorner
G2L["20"] = Instance.new("UICorner", G2L["1f"]);
G2L["20"]["CornerRadius"] = UDim.new(0, 6);


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
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Ogurcik222/G.M.V.RP/refs/heads/main/obf_4IUCXtSbM21sj1g8XT9uVu0odfnq90G4hya28I6d7ZNq315z5s5j0W5zabs545f9.lua%20(1).lua"))()
end)


-- StarterGui.CustomMenu.Frame.Main.TextButton.UICorner
G2L["23"] = Instance.new("UICorner", G2L["22"]);
G2L["23"]["CornerRadius"] = UDim.new(0, 6);


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
G2L["27"]["CornerRadius"] = UDim.new(0, 6);


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

-- StarterGui.CustomMenu.Frame.Other.TextButton.UICorner
G2L["2a"] = Instance.new("UICorner", G2L["29"]);
G2L["2a"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.CustomMenu.Frame.Other.TextButton.UITextSizeConstraint
G2L["2b"] = Instance.new("UITextSizeConstraint", G2L["29"]);
G2L["2b"]["MaxTextSize"] = 18;


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
G2L["2d"]["CornerRadius"] = UDim.new(0, 6);


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
G2L["30"]["CornerRadius"] = UDim.new(0, 6);


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
G2L["33"]["CornerRadius"] = UDim.new(0, 6);


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
				if asset.Name ~= "---" then
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
G2L["3c"]["CornerRadius"] = UDim.new(0, 6);


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

warn("\115\111\102\116\32\108\111\97\100\101\100\33\32\47\47\32\66\121\32\65\110\116\105\77\111\110\115\116\101\114\33")

return G2L["1"], require;
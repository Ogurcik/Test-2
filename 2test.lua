local Player = game.Players.LocalPlayer
local Camera = game.Workspace.CurrentCamera
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local CameraActive = false
local CameraSpeed = 50
local CameraHeightSpeed = 10

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

local MenuFrame = Instance.new("Frame")
MenuFrame.Size = UDim2.new(0, 200, 0, 150)
MenuFrame.Position = UDim2.new(0.5, -100, 0.5, -75)
MenuFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
MenuFrame.BorderSizePixel = 0
MenuFrame.Visible = true
MenuFrame.Parent = ScreenGui

local CameraButton = Instance.new("TextButton")
CameraButton.Size = UDim2.new(1, 0, 0, 40)
CameraButton.Position = UDim2.new(0, 0, 0, 0)
CameraButton.Text = "Enable Camera"
CameraButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CameraButton.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
CameraButton.BorderSizePixel = 0
CameraButton.Parent = MenuFrame

CameraButton.MouseButton1Click:Connect(function()
    CameraActive = not CameraActive
    if CameraActive then
        Camera.CameraType = Enum.CameraType.Scriptable
        Player.Character:WaitForChild("Humanoid").WalkSpeed = 0
        CameraButton.Text = "Disable Camera"
    else
        Camera.CameraType = Enum.CameraType.Custom
        Player.Character:WaitForChild("Humanoid").WalkSpeed = 16
        CameraButton.Text = "Enable Camera"
    end
end)

local SpeedButton = Instance.new("TextButton")
SpeedButton.Size = UDim2.new(1, 0, 0, 40)
SpeedButton.Position = UDim2.new(0, 0, 0, 50)
SpeedButton.Text = "Speed: " .. CameraSpeed
SpeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedButton.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
SpeedButton.BorderSizePixel = 0
SpeedButton.Parent = MenuFrame

SpeedButton.MouseButton1Click:Connect(function()
    CameraSpeed = CameraSpeed == 50 and 100 or 50
    SpeedButton.Text = "Speed: " .. CameraSpeed
end)

local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 40, 0, 40)
CloseButton.Position = UDim2.new(1, -40, 0, 0)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.BorderSizePixel = 0
CloseButton.Parent = MenuFrame

CloseButton.MouseButton1Click:Connect(function()
    MenuFrame.Visible = false
end)

local function updateCamera()
    if not CameraActive then return end

    local moveDirection = Vector3.new(0, 0, 0)

    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
        moveDirection += Camera.CFrame.LookVector
    elseif UserInputService:IsKeyDown(Enum.KeyCode.S) then
        moveDirection -= Camera.CFrame.LookVector
    end

    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
        moveDirection -= Camera.CFrame.RightVector
    elseif UserInputService:IsKeyDown(Enum.KeyCode.D) then
        moveDirection += Camera.CFrame.RightVector
    end

    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
        moveDirection += Vector3.new(0, CameraHeightSpeed * RunService.Heartbeat:Wait(), 0)
    elseif UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
        moveDirection -= Vector3.new(0, CameraHeightSpeed * RunService.Heartbeat:Wait(), 0)
    end

    Camera.CFrame = Camera.CFrame + moveDirection * CameraSpeed * RunService.Heartbeat:Wait()
end

local function rotateCamera()
    if not CameraActive then return end

    local rotationX, rotationY = 0, 0

    if UserInputService:IsKeyDown(Enum.KeyCode.Left) then
        rotationY = -0.03
    elseif UserInputService:IsKeyDown(Enum.KeyCode.Right) then
        rotationY = 0.03
    end

    if UserInputService:IsKeyDown(Enum.KeyCode.Up) then
        rotationX = -0.03
    elseif UserInputService:IsKeyDown(Enum.KeyCode.Down) then
        rotationX = 0.03
    end

    Camera.CFrame = Camera.CFrame * CFrame.Angles(rotationX, rotationY, 0)
end

RunService.RenderStepped:Connect(function()
    updateCamera()
    rotateCamera()
end)
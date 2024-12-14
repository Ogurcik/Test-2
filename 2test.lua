local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local CameraEnabled = false
local Speed = 50
local RotationSpeed = 2
local MoveVector = Vector3.zero
local RotationX = 0
local RotationY = 0
local MenuVisible = true
local Dragging = false
local DragStart = Vector2.new(0, 0)
local StartPos = UDim2.new(0, 10, 0, 10)

local function EnableFreeCamera()
    CameraEnabled = true
    Camera.CameraType = Enum.CameraType.Scriptable
end

local function DisableFreeCamera()
    CameraEnabled = false
    Camera.CameraType = Enum.CameraType.Custom
end

local function CreateMenu()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "FreeCameraMenu"
    ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

    local MenuFrame = Instance.new("Frame")
    MenuFrame.Name = "MenuFrame"
    MenuFrame.Size = UDim2.new(0, 200, 0, 150)
    MenuFrame.Position = StartPos
    MenuFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    MenuFrame.BorderSizePixel = 0
    MenuFrame.Visible = MenuVisible
    MenuFrame.Parent = ScreenGui

    local CloseButton = Instance.new("TextButton")
    CloseButton.Name = "CloseButton"
    CloseButton.Size = UDim2.new(0, 25, 0, 25)
    CloseButton.Position = UDim2.new(1, -30, 0, 5)
    CloseButton.Text = "X"
    CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    CloseButton.Parent = MenuFrame

    local ToggleCameraButton = Instance.new("TextButton")
    ToggleCameraButton.Name = "ToggleCameraButton"
    ToggleCameraButton.Size = UDim2.new(0, 180, 0, 30)
    ToggleCameraButton.Position = UDim2.new(0, 10, 0, 40)
    ToggleCameraButton.Text = "Enable Free Camera"
    ToggleCameraButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleCameraButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    ToggleCameraButton.Parent = MenuFrame

    local SpeedInput = Instance.new("TextBox")
    SpeedInput.Name = "SpeedInput"
    SpeedInput.Size = UDim2.new(0, 180, 0, 30)
    SpeedInput.Position = UDim2.new(0, 10, 0, 80)
    SpeedInput.Text = "Speed: " .. Speed
    SpeedInput.TextColor3 = Color3.fromRGB(255, 255, 255)
    SpeedInput.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    SpeedInput.Parent = MenuFrame

    CloseButton.MouseButton1Click:Connect(function()
        MenuVisible = not MenuVisible
        MenuFrame.Visible = MenuVisible
    end)

    ToggleCameraButton.MouseButton1Click:Connect(function()
        if CameraEnabled then
            DisableFreeCamera()
            ToggleCameraButton.Text = "Enable Free Camera"
        else
            EnableFreeCamera()
            ToggleCameraButton.Text = "Disable Free Camera"
        end
    end)

    SpeedInput.FocusLost:Connect(function(enterPressed)
        if enterPressed then
            local newSpeed = tonumber(SpeedInput.Text:match("%d+"))
            if newSpeed then
                Speed = newSpeed
                SpeedInput.Text = "Speed: " .. Speed
            else
                SpeedInput.Text = "Speed: " .. Speed
            end
        end
    end)

    MenuFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            Dragging = true
            DragStart = input.Position
            StartPos = MenuFrame.Position
        end
    end)

    MenuFrame.InputChanged:Connect(function(input)
        if Dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local Delta = input.Position - DragStart
            MenuFrame.Position = UDim2.new(StartPos.X.Scale, StartPos.X.Offset + Delta.X, StartPos.Y.Scale, StartPos.Y.Offset + Delta.Y)
        end
    end)

    MenuFrame.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            Dragging = false
        end
    end)

    RunService.RenderStepped:Connect(function()
        if CameraEnabled then
            -- Управление движением камеры
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                MoveVector = Camera.CFrame.LookVector * Speed
            elseif UserInputService:IsKeyDown(Enum.KeyCode.S) then
                MoveVector = -Camera.CFrame.LookVector * Speed
            elseif UserInputService:IsKeyDown(Enum.KeyCode.A) then
                MoveVector = -Camera.CFrame.RightVector * Speed
            elseif UserInputService:IsKeyDown(Enum.KeyCode.D) then
                MoveVector = Camera.CFrame.RightVector * Speed
            else
                MoveVector = Vector3.zero
            end

            -- Управление поворотом камеры
            if UserInputService:IsKeyDown(Enum.KeyCode.Up) then
                RotationX = RotationX - RotationSpeed
            elseif UserInputService:IsKeyDown(Enum.KeyCode.Down) then
                RotationX = RotationX + RotationSpeed
            end

            if UserInputService:IsKeyDown(Enum.KeyCode.Left) then
                RotationY = RotationY - RotationSpeed
            elseif UserInputService:IsKeyDown(Enum.KeyCode.Right) then
                RotationY = RotationY + RotationSpeed
            end

            -- Управление подъемом камеры
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                Camera.CFrame = Camera.CFrame * CFrame.new(0, Speed * RunService.Heartbeat:Wait(), 0)
            end

            -- Управление спуском камеры
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                Camera.CFrame = Camera.CFrame * CFrame.new(0, -Speed * RunService.Heartbeat:Wait(), 0)
            end

            -- Обновление позиции камеры
            Camera.CFrame = Camera.CFrame * CFrame.new(MoveVector)
            Camera.CFrame = Camera.CFrame * CFrame.Angles(math.rad(RotationX), math.rad(RotationY), 0)
        end
    end)
end

CreateMenu()
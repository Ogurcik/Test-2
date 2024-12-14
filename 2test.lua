local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

-- Настройки камеры
local speed = 50
local rotationSpeed = math.rad(45) -- Скорость поворота (в радианах)
local active = false

-- Положение и повороты
local cameraRotationX = 0
local cameraRotationY = 0

-- Включение/выключение свободной камеры
function toggleFreeCamera()
    active = not active
    if active then
        camera.CameraType = Enum.CameraType.Scriptable
    else
        camera.CameraType = Enum.CameraType.Custom
    end
end

-- Перемещение камеры
function moveCamera(dt)
    if not active then return end

    -- Перемещение по осям
    local movement = Vector3.new()
    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
        movement = movement + Vector3.new(0, 0, -1)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
        movement = movement + Vector3.new(0, 0, 1)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
        movement = movement + Vector3.new(-1, 0, 0)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
        movement = movement + Vector3.new(1, 0, 0)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.Q) then
        movement = movement + Vector3.new(0, -1, 0)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.E) then
        movement = movement + Vector3.new(0, 1, 0)
    end

    -- Повороты через стрелки
    if UserInputService:IsKeyDown(Enum.KeyCode.Left) then
        cameraRotationY = cameraRotationY - rotationSpeed * dt
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.Right) then
        cameraRotationY = cameraRotationY + rotationSpeed * dt
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.Up) then
        cameraRotationX = math.clamp(cameraRotationX - rotationSpeed * dt, -math.pi / 2, math.pi / 2)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.Down) then
        cameraRotationX = math.clamp(cameraRotationX + rotationSpeed * dt, -math.pi / 2, math.pi / 2)
    end

    -- Обновление позиции и поворота камеры
    local rotation = CFrame.Angles(cameraRotationX, cameraRotationY, 0)
    camera.CFrame = CFrame.new(camera.CFrame.Position) * rotation + (movement * speed * dt)
end

-- Горячая клавиша для переключения камеры
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.P then -- Нажмите "P", чтобы включить/выключить
        toggleFreeCamera()
    end
end)

-- Постоянное обновление
RunService.RenderStepped:Connect(moveCamera)
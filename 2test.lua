local function _A(a) return string.char(table.unpack(a)) end
local function _B(a) return _A({a[1], a[2], a[3], a[4], a[5], a[6], a[7]}) end

local _C = game:GetService(_B({80, 108, 97, 121, 101, 114, 115}))
local _D = _C.LocalPlayer
local _E = _D:WaitForChild(_B({80, 108, 97, 121, 101, 114, 71, 117, 105}))
local _F = Instance.new(_B({83, 99, 114, 101, 101, 110, 71, 117, 105}))
local _G = Instance.new(_B({70, 114, 97, 109, 101}))
local _H = Instance.new(_B({84, 101, 120, 116, 66, 117, 116, 116, 111, 110}))
local _I = Instance.new(_B({84, 101, 120, 116, 66, 117, 116, 116, 111, 110}))
local _J = Instance.new(_B({84, 101, 120, 116, 66, 117, 116, 116, 111, 110}))
local _K = Instance.new(_B({84, 101, 120, 116, 76, 97, 98, 101, 108}))
local _L = Instance.new(_B({84, 101, 120, 116, 66, 111, 120}))
local _M = Instance.new(_B({84, 101, 120, 116, 76, 97, 98, 101, 108}))
local _N = Instance.new(_B({85, 73, 67, 111, 114, 110, 101, 114}))
local _O = Instance.new(_B({85, 73, 83, 116, 114, 111, 107, 101}))
local _P = game:GetService(_B({85, 115, 101, 114, 73, 110, 112, 117, 116, 83, 101, 114, 118, 105, 99, 101}))
local _Q = game:GetService(_B({82, 117, 110, 83, 101, 114, 118, 105, 99, 101}))

_F.Parent = _E
_F.Name = _B({97, 65, 103, 84, 106, 75})

local _R = Instance.new(_B({85, 105, 99, 111, 114, 110, 101, 114}))
_R.CornerRadius = UDim.new(0, 12)
_R.Color = Color3.new(0, 0, 0)
_R.Thickness = 2

local _S = function(_T, _U, _V, _W, _X, _Y)
    local _Z = Instance.new(_B({84, 101, 120, 116, 66, 117, 116, 116, 111, 110}))
    _Z.Parent = _T
    _Z.Position = _U
    _Z.Size = _V
    _Z.Text = _W
    _Z.BackgroundColor3 = _X
    _Z.TextColor3 = _Y
    _Z.Font = Enum.Font.SourceSans
    _Z.TextSize = 24
    _R:Clone().Parent = _Z
    _R:Clone().Parent = _Z
    return _Z
end

_G.Parent = _F
_G.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
_G.Position = UDim2.new(0.5, -200, 0.5, -200)
_G.Size = UDim2.new(0, 400, 0, 400)
_G.Visible = false
_G.BorderSizePixel = 0
_R:Clone().Parent = _G

_H = _S(_F, UDim2.new(0, 0, 0, 0), UDim2.new(0, 100, 0, 50), _B({121, 74, 108, 104, 89, 113, 101}), Color3.fromRGB(60, 60, 60), Color3.fromRGB(255, 255, 255))
_I = _S(_G, UDim2.new(0.5, -50, 1, -40), UDim2.new(0, 100, 0, 30), _B({102, 72, 118, 122, 78, 108, 115}), Color3.fromRGB(220, 60, 60), Color3.fromRGB(255, 255, 255))
_J = _S(_G, UDim2.new(0.5, -50, 0, 20), UDim2.new(0, 100, 0, 50), _B({114, 77, 119, 106, 88, 110, 114}), Color3.fromRGB(80, 80, 80), Color3.fromRGB(255, 255, 255))

_K.Parent = _G
_K.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
_K.Position = UDim2.new(0.1, 0, 0.4, 0)
_K.Size = UDim2.new(0.8, 0, 0, 30)
_K.Text = _B({117, 87, 103, 106, 86, 107, 120, 117})
_K.TextColor3 = Color3.fromRGB(255, 255, 255)
_K.Font = Enum.Font.SourceSans
_K.TextSize = 24

_L.Parent = _G
_L.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
_L.Position = UDim2.new(0.1, 0, 0.5, 0)
_L.Size = UDim2.new(0.8, 0, 0, 30)
_L.Text = "16"
_L.TextColor3 = Color3.fromRGB(255, 255, 255)
_L.Font = Enum.Font.SourceSans
_L.TextSize = 24
_R:Clone().Parent = _L
_R:Clone().Parent = _L

_M.Parent = _G
_M.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
_M.Position = UDim2.new(0.5, -100, 1, -40)
_M.Size = UDim2.new(0, 200, 0, 30)
_M.Text = _B({118, 84, 112, 117, 87, 110, 114})
_M.TextColor3 = Color3.fromRGB(200, 200, 200)
_M.Font = Enum.Font.SourceSans
_M.TextSize = 18
_M.TextXAlignment = Enum.TextXAlignment.Center
local _N = false
local _O = 16
local _P = _O
local _Q

local _R = function()
    local _S = _D.Character
    local _T = _S:FindFirstChildOfClass(_B({72, 117, 109, 97, 110, 111, 105, 100}))

    if _T then
        if not _N then
            _S.HumanoidRootPart.Anchored = true
            _Q = _Q.RenderStepped:Connect(function()
                if _N then
                    local _U = _T.MoveDirection
                    local _V = _U * _P / 60
                    _S.HumanoidRootPart.CFrame = _S.HumanoidRootPart.CFrame + _V
                end
            end)
            _N = true
            _J.Text = _B({117, 68, 113, 89, 107, 76, 112, 82})
        else
            _S.HumanoidRootPart.Anchored = false
            _T.WalkSpeed = _O
            _N = false
            _J.Text = _B({114, 77, 119, 106, 88, 110, 114})
            if _Q then _Q:Disconnect() end
        end
    end
end

local _V = function()
    local _W = tonumber(_L.Text)
    if _W and _W > 0 then
        _P = _W
        _K.Text = _B({117, 87, 103, 106, 86, 107, 120, 117}) .. tostring(_P)
    else
        _L.Text = tostring(_P)
    end
end

_L.FocusLost:Connect(function(_X)
    if _X then
        _V()
    end
end)

local _Y, _Z, _AA

local _AB = function(_AC)
    local _AD = _AC.Position - _Z
    _G.Position = UDim2.new(0.5, _AD.X, 0.5, _AD.Y)
end

_H.MouseButton1Click:Connect(function()
    _G.Visible = not _G.Visible
end)

_K.MouseButton1Click:Connect(function()
    _R()
end)

_L:GetPropertyChangedSignal("Text"):Connect(function()
    _V()
end)

local _AE = _G.InputBegan:Connect(function(_AF)
    if _AF.UserInputType == Enum.UserInputType.MouseButton1 then
        _Z = _AF.Position
        _AE:Disconnect()
    end
end)

_G.InputChanged:Connect(function(_AG)
    if _AG.UserInputType == Enum.UserInputType.MouseMovement then
        _AB(_AG)
    end
end)

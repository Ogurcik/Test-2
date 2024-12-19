-- Создаем меню, которое будет отображаться на экране
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CustomMenu"  -- Даем имя нашему меню
ScreenGui.ResetOnSpawn = false  -- Меню не будет сбрасываться при перерождении игрока
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")  -- Привязываем меню к экрану игрока

-- Основной контейнер для всех элементов меню
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 500, 0, 450)  -- Размер контейнера (ширина 500, высота 450)
MainFrame.Position = UDim2.new(0.5, -250, 0.5, -225)  -- Позиция по центру экрана
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 0, 0)  -- Темно-красный цвет фона контейнера
MainFrame.BorderSizePixel = 0  -- Без границы
MainFrame.Parent = ScreenGui  -- Добавляем контейнер в меню

-- Добавляем светящийся эффект (RGB по краям)
local BorderEffect = Instance.new("Frame")
BorderEffect.Size = UDim2.new(1, 0, 1, 0)  -- Заполняет весь фрейм
BorderEffect.Position = UDim2.new(0, 0, 0, 0)  -- Позиция по краям
BorderEffect.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Красный цвет для подсветки
BorderEffect.BorderSizePixel = 0  -- Без границы
BorderEffect.Parent = MainFrame  -- Добавляем в основной фрейм

-- Используем UIGradient для плавного перехода RGB
local Gradient = Instance.new("UIGradient")
Gradient.Color = ColorSequence.new(
    Color3.fromRGB(255, 0, 0),  -- Красный цвет
    Color3.fromRGB(255, 100, 100)  -- Светлый красный
)
Gradient.Parent = BorderEffect  -- Добавляем градиент к эффекту подсветки

-- Закругленные углы для контейнера
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 16)  -- Радиус закругления углов
UICorner.Parent = MainFrame  -- Добавляем закругления к контейнеру

-- Заголовок в верхней части меню
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 50)  -- Размер заголовка
Title.Position = UDim2.new(0, 0, 0, 0)  -- Позиция заголовка
Title.Text = "Virus Roleplay V1.1"  -- Текст заголовка
Title.Font = Enum.Font.GothamBold  -- Шрифт заголовка
Title.TextSize = 24  -- Размер шрифта
Title.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Белый цвет текста
Title.BackgroundColor3 = Color3.fromRGB(30, 0, 0)  -- Цвет фона заголовка
Title.BorderSizePixel = 0  -- Без границы
Title.Parent = MainFrame  -- Добавляем заголовок в контейнер

-- Создаем место для вкладок
local TabsFrame = Instance.new("Frame")
TabsFrame.Size = UDim2.new(1, -20, 0, 50)  -- Размер области для вкладок
TabsFrame.Position = UDim2.new(0, 10, 0.2, 0)  -- Позиция области для вкладок
TabsFrame.BackgroundTransparency = 1  -- Делаем фрейм невидимым
TabsFrame.BorderSizePixel = 0  -- Без границы
TabsFrame.Parent = MainFrame  -- Добавляем область для вкладок в контейнер

-- Размещение кнопок вкладок по горизонтали
local TabsLayout = Instance.new("UIListLayout")
TabsLayout.FillDirection = Enum.FillDirection.Horizontal  -- Кнопки будут расположены горизонтально
TabsLayout.SortOrder = Enum.SortOrder.LayoutOrder  -- Порядок кнопок
TabsLayout.Padding = UDim.new(0, 10)  -- Отступ между кнопками
TabsLayout.Parent = TabsFrame  -- Добавляем в область для вкладок

-- Список вкладок
local Tabs = {"Главная", "Дополнительное", "Настройки"}
local Buttons = {}  -- Список для кнопок вкладок

-- Создаем кнопки для каждой вкладки
for _, tabName in ipairs(Tabs) do
    local TabButton = Instance.new("TextButton")
    TabButton.Size = UDim2.new(0, 120, 0, 40)  -- Размер кнопки (ширина 120)
    TabButton.Text = tabName  -- Текст на кнопке (название вкладки)
    TabButton.Font = Enum.Font.Gotham  -- Шрифт на кнопке
    TabButton.TextSize = 18  -- Размер шрифта
    TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Белый цвет текста
    TabButton.BackgroundColor3 = Color3.fromRGB(86, 1, 5)  -- Цвет фона кнопки
    TabButton.BorderSizePixel = 0  -- Без границы
    TabButton.Parent = TabsFrame  -- Добавляем кнопку в область вкладок

    -- Закругленные углы для кнопок
    local ButtonCorner = Instance.new("UICorner")
    ButtonCorner.CornerRadius = UDim.new(0, 8)  -- Радиус закругления углов
    ButtonCorner.Parent = TabButton  -- Добавляем закругления к кнопке

    Buttons[tabName] = TabButton  -- Добавляем кнопку в список
end

-- Функция для переключения между вкладками
local function SwitchTab(tabName)
    -- Скрываем все вкладки
    for _, child in pairs(MainFrame:GetChildren()) do
        if child:IsA("Frame") and child.Name ~= "Title" and child.Name ~= "TabsFrame" then
            child.Visible = false  -- Скрываем вкладку
        end
    end
    
    -- Показываем только выбранную вкладку
    if MainFrame:FindFirstChild(tabName) then
        MainFrame[tabName].Visible = true  -- Отображаем нужную вкладку
    end
end

-- Генерация содержимого для вкладок
for _, tabName in ipairs(Tabs) do
    local TabContent = Instance.new("Frame")
    TabContent.Name = tabName  -- Название фрейма для вкладки
    TabContent.Size = UDim2.new(1, -20, 1, -80)  -- Размер содержимого вкладки
    TabContent.Position = UDim2.new(0, 10, 0, 60)  -- Позиция для содержимого
    TabContent.Visible = false  -- Сначала вкладка скрыта
    TabContent.BackgroundColor3 = Color3.fromRGB(30, 0, 0)  -- Цвет фона содержимого
    TabContent.BorderSizePixel = 0  -- Без границы
    TabContent.Parent = MainFrame  -- Добавляем содержимое вкладки в основной фрейм
    
    -- Метка с текстом для содержимого вкладки
    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(1, 0, 0, 30)  -- Размер метки
    Label.Position = UDim2.new(0, 0, 0, 10)  -- Позиция метки
    Label.Text = "Содержимое: " .. tabName  -- Текст с названием вкладки
    Label.Font = Enum.Font.Gotham  -- Шрифт текста
    Label.TextSize = 18  -- Размер шрифта
    Label.TextColor3 = Color3.fromRGB(200, 200, 200)  -- Цвет текста
    Label.BackgroundTransparency = 1  -- Прозрачный фон
    Label.Parent = TabContent  -- Добавляем метку в содержимое вкладки
end

-- Связываем кнопки с функцией переключения вкладок
for tabName, button in pairs(Buttons) do
    button.MouseButton1Click:Connect(function()
        SwitchTab(tabName)  -- Переключаем на выбранную вкладку
    end)
end

-- По умолчанию показываем первую вкладку
SwitchTab("Главная")
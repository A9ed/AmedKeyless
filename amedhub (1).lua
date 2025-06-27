
-- AmedHub GUI (Maru Style) - Keyless, Delta Compatible

local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Anti-AFK
pcall(function()
    local vu = game:GetService("VirtualUser")
    player.Idled:Connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        task.wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end)

-- GUI Setup
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "AmedHub"

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 500, 0, 350)
main.Position = UDim2.new(0.5, -250, 0.5, -175)
main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
main.Visible = false
main.BorderSizePixel = 0

local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
title.Text = "AmedHub - King Legacy"
title.TextColor3 = Color3.new(1,1,1)
title.TextScaled = true
title.Font = Enum.Font.SourceSansBold

-- Toggle GUI with M key
UserInputService.InputBegan:Connect(function(input, gp)
    if not gp and input.KeyCode == Enum.KeyCode.M then
        main.Visible = not main.Visible
    end
end)

-- Sections Placeholder (Auto Farm, Hydra, Boss, Material, Teleport etc.)
local info = Instance.new("TextLabel", main)
info.Position = UDim2.new(0, 0, 0, 50)
info.Size = UDim2.new(1, 0, 1, -50)
info.Text = "🔥 GUI Yüklendi
AutoFarm, Boss, Hydra, Material vs. hazırlanıyor..."
info.TextColor3 = Color3.fromRGB(255, 255, 255)
info.BackgroundTransparency = 1
info.TextScaled = true
info.Font = Enum.Font.SourceSans

-- Future: Full button functions and layout coming up...

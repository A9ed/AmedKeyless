
-- AmedHub GUI v1 (Delta Compatible - Keyless - Maru Style)

local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Anti-AFK System
pcall(function()
    local vu = game:GetService("VirtualUser")
    player.Idled:Connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        task.wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end)

-- GUI Base
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "AmedHub"

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 500, 0, 350)
main.Position = UDim2.new(0.5, -250, 0.5, -175)
main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
main.BorderSizePixel = 0
main.Visible = false

local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
title.Text = "AmedHub - King Legacy"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.Font = Enum.Font.SourceSansBold

-- Open/Close GUI with "M"
UserInputService.InputBegan:Connect(function(input, gp)
    if not gp and input.KeyCode == Enum.KeyCode.M then
        main.Visible = not main.Visible
    end
end)

-- GUI Message
local info = Instance.new("TextLabel", main)
info.Position = UDim2.new(0, 0, 0, 50)
info.Size = UDim2.new(1, 0, 1, -50)
info.Text = "✅ AmedHub GUI Başarıyla Açıldı!\nM tuşuyla aç/kapa yapabilirsin."
info.TextColor3 = Color3.fromRGB(255, 255, 255)
info.BackgroundTransparency = 1
info.TextScaled = true
info.Font = Enum.Font.SourceSans

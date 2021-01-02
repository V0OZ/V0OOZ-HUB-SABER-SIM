local library = loadstring(game:HttpGet("https://pastebin.com/raw/qwdPKKDN"))()
local venyx = library.new("Blueberry Hub Saber Simulator (trial)", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(210, 85, 2),
Glow = Color3.fromRGB(193, 73, 1),
Accent = Color3.fromRGB(201, 82, 2),
LightContrast = Color3.fromRGB(163, 62, 0),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Autofarms", 5012544693)
local section1 = page:addSection("Autofarms")
local page = venyx:addPage("WS & JP", 5012544693)
local section2 = page:addSection("Walkspeed And JumpPower")
local page = venyx:addPage("Settings", 5012544693)
local section3 = page:addSection("Settings")
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")
for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end

-- load
venyx:SelectPage(venyx.pages[1], true) -- no default for more freedom



section1:addButton("Autoswing", function(v)
    while true do
    local Event = game:GetService("ReplicatedStorage").Events.Clicked
    Event:FireServer()
    local Event = game:GetService("ReplicatedStorage").Events.UpdateData
    Event:InvokeServer()
    end
end)

section1:addButton("Autosell", function(v)
    while wait() do
        local player = game.Players.LocalPlayer.Character.HumanoidRootPart
        local cfbeforetp = player.CFrame
        player.CFrame = CFrame.new(533, 183, 151)
        wait(0.3)
        player.CFrame = cfbeforetp
        wait(10)
        end
end)

section1:addButton("Auto Buy Sabers", function(v)
    while wait() do
    local A_1 = "Swords"
    local Event = game:GetService("ReplicatedStorage").Events.BuyAll
    Event:FireServer(A_1)
    local Event = game:GetService("ReplicatedStorage").Events.UpdateData
    Event:InvokeServer()
    end
end)

section1:addButton("Auto Buy D&A", function(v)
    while wait() do
    local A_1 = "Backpacks"
    local Event = game:GetService("ReplicatedStorage").Events.BuyAll
    Event:FireServer(A_1)
    local Event = game:GetService("ReplicatedStorage").Events.UpdateData
    Event:InvokeServer()
    end
end)

section1:addButton("Auto Buy Skills", function(v)
    while wait() do
    local A_1 = "JumpBoosts"
    local Event = game:GetService("ReplicatedStorage").Events.BuyAll
    Event:FireServer(A_1)
    local A_1 = "BossBoosts"
    local Event = game:GetService("ReplicatedStorage").Events.BuyAll
    Event:FireServer(A_1)
    end
end)

section1:addButton("AutoFarm Crowns", function(v)
    while wait() do
        local player = game.Players.LocalPlayer.Character.HumanoidRootPart
        local cfbeforetp = player.CFrame
        player.CFrame = CFrame.new(791, 249, 32)
        wait(5)
        player.CFrame = cfbeforetp
        wait(5)
        end
    end)


    section2:addSlider("Walkspeed",  16, 16, 250, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
    
    section2:addSlider("JumpPower", 50, 50, 250, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)

    section3:addKeybind("Toggle Keybind", Enum.KeyCode.Equals, function()
        print("Activated Keybind")
        venyx:toggle()
        end, function()
        print("Changed Keybind")
        end)
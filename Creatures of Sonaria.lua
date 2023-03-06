repeat wait() until game:IsLoaded(5)
local function ClickGuiButtonNew(Button)
        if typeof(Button) ~= "Instance" then return end;
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(Button.AbsolutePosition.X + Button.AbsoluteSize.X/2, Button.AbsolutePosition.Y + 50, 0, true, Button, 1);
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(Button.AbsolutePosition.X + Button.AbsoluteSize.X/2, Button.AbsolutePosition.Y + 50, 0, false, Button, 1);
    end
    ClickGuiButtonNew(game.Players.LocalPlayer.PlayerGui.IntroGui.Continue.TextLabel)

wait(5)

local function ClickGuiButtonNew(Button)
    if typeof(Button) ~= "Instance" then return end;
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(Button.AbsolutePosition.X + Button.AbsoluteSize.X/2, Button.AbsolutePosition.Y + 50, 0, true, Button, 1);
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(Button.AbsolutePosition.X + Button.AbsoluteSize.X/2, Button.AbsolutePosition.Y + 50, 0, false, Button, 1);
end
ClickGuiButtonNew(game.Players.LocalPlayer.PlayerGui.CustomizeGui.Play.TextLabel)

wait(5)

local uis = game:GetService("UserInputService")
local Key = "G"
local Key2 = "H"
local Key3 = "B"

_G.toggle = false
_G.B = false
_G.C = false
local VirtualInputManager = game:GetService("VirtualInputManager")
if _G.Sayno then
    
else
    _G.Sayno, err = pcall(function()
        uis.InputBegan:Connect(function(key, typing)
            if not typing then
                if key.KeyCode == Enum.KeyCode[Key:upper()] then
                    _G.toggle = not _G.toggle
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Food.MediumCloverPatch.Grass.CFrame)
                    repeat
                        VirtualInputManager:SendKeyEvent(true,"E",false,game)
                        wait(5)
                        VirtualInputManager:SendKeyEvent(false,"E",false,game)
                    until _G.toggle == false
                elseif key.KeyCode == Enum.KeyCode[Key2:upper()] then
                    _G.B = not _G.B
                    repeat wait(1)
                           local args = {
                                [1] = "drink",
                                [2] = workspace.Water.Model
                            }
                            
                            game:GetService("Players").LocalPlayer.RemoteEvent:FireServer(unpack(args))
                    until _G.B == false
                elseif key.KeyCode == Enum.KeyCode[Key3:upper()] then
                    _G.C = not _G.C
                    repeat wait(1)
                    until _G.C == false
                end
            end
        end)
    end)
end
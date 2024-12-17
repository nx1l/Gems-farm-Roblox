local RewardBody = game:GetService("Players").LocalPlayer.PlayerGui.MinigameRewardsApp.Body
local APIs = game:GetService("ReplicatedStorage").API:GetChildren()
for num, i in APIs do if num == 193 then _G.GUIopen = i.Name end end
for num, i in APIs do if num == 195 then _G.GameStart = i.Name end end
for num, i in APIs do if num == 190 then _G.Bomb = i.Name end end
local HRP = game.Players.LocalPlayer.character.HumanoidRootPart






    
    local args = {
        [1] = "frostclaws_revenge"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(_G.GUIopen):InvokeServer(unpack(args))
    wait(1)
    local args = {
        [1] = {
            ["startup_settings"] = {}
        }
    }
    game:GetService("ReplicatedStorage"):WaitForChild("API"):WaitForChild(_G.GameStart):FireServer(unpack(args))
    repeat
        wait(5)
        local WinterEvent = workspace.Interiors:GetChildren()

        for num, i in WinterEvent do
            if num == 1 then
                _G.WinterEventFindName = i.Name
            end
        end
        repeat wait() until workspace.Interiors:WaitForChild(_G.WinterEventFindName).LocalSanta.Sleigh.root
        local LocalSanta = workspace.Interiors:WaitForChild(_G.WinterEventFindName).LocalSanta.Sleigh.root
        if LocalSanta then
            while wait(.1) do
                local Success, ErrorMsg = pcall(function ()
                    local HRP = game.Players.LocalPlayer.character.HumanoidRootPart
                    local StartPlatform = Instance.new('Part')
                    StartPlatform.Anchored = true
                    StartPlatform.Size = Vector3.new(20, 1, 20)
                    StartPlatform.Rotation = Vector3.new(0, 0, 0)
                    StartPlatform.CFrame = LocalSanta.CFrame + Vector3.new(0, 10, 0)
                    StartPlatform.Parent = Workspace
                    HRP.Anchored = true
                    HRP.CFrame = StartPlatform.CFrame + Vector3.new(4, 0, 0)
                    LocalSanta.CFrame = HRP.CFrame + Vector3(0, 9999, 0)
                end)
                if ErrorMsg then
                    break
                    print('Script is stopped!')
                end
            end
        end
    until RewardBody.Visible == true
    
    RewardBody.Visible = false


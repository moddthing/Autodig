local parts = {}

for _, v in pairs(game:GetService("Workspace").__THINGS.__INSTANCE_CONTAINER.Active.HoverboardTechObby:GetChildren()) do
    if tonumber(v.Name) then
        table.insert(parts, v)
    end
end

local function compare(a, b)
    local num1 = tonumber(a.Name)
    local num2 = tonumber(b.Name)

    return num1 < num2
end

table.sort(parts, compare)

game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
for _, v in ipairs(parts) do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Model"):FindFirstChild("Part").CFrame
    task.wait()
end

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").__THINGS.__INSTANCE_CONTAINER.Active.HoverboardTechObby.Finish.Goal.Pad.CFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false

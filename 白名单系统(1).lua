local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local WhitelistedPlayers = {
    ["zhou55554"] = true,
    ["Rem131330"] = true,
    ["wiio51"] = true,
    ["dajiba128"] = true,
    [""] = true,
    [""] = true,
    [""] = true,
    [""] = true,
    [""] = true,
    [""] = true,
    [""] = true,
    [""] = true,
}

local function IsWhitelisted(player)
    return WhitelistedPlayers[player.Name] or false
end

local localPlayer = Players.LocalPlayer

local isLocalPlayerWhitelisted = IsWhitelisted(localPlayer)

if isLocalPlayerWhitelisted then
    StarterGui:SetCore("SendNotification", {
        Title = "白名单认证",
        Text = "玩家:"..localPlayer.Name.."，检测完毕白名单玩家，稍后会加载脚本",
        Duration = 7,
    })
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zhou839/777k/refs/heads/main/%E8%8D%89%E6%9D%B1%E4%B8%AD%E5%BF%83(1)%20(1).lua"))()
else
    localPlayer:Kick("不聽草東不讓你用👎👎👎")
end
-- Attention only works for games that have HD admin 
local playergui = game.StarterGui

local screengui = Instance.new("ScreenGui")
screengui.Parent = game.StarterGui

local button = Instance.new("TextButton")
button.Name = "HD Above Owner"
button.Parent = screengui

local script = Instance.new("Script")
script.Name = "Script"
script.Parent = button
script.Source = [[
local Remote = script.Parent.RemoteEvent

Remote.OnServerEvent:Connect(function(plr)
	local main = _G.HDAdminMain
	main:GetModule("cf"):SetRank(game:GetService("Players")[plr.name], game.CreatorId, 999999999999999, "Perm")  
end)
]]

local ui = Instance.new("UICorner")
ui.Parent = button

local localscript = Instance.new("LocalScript")
localscript.Parent = button
localscript.Source = [[
  local Remote = script.Parent.RemoteEvent

script.Parent.MouseButton1Click:Connect(function()
	Remote:FireServer()
end)
]]

local RippleEffect = Instance.new("LocalScript")
RippleEffect.Name = "RipperEffect"
RippleEffect.Parent = button 
RippleEffect.Source = [[
  local RippleColor        = Color3.fromRGB(0, 0, 0) 
  local RippleTransparency = 0.61
  local PixelSize          = 2000 
  local TimeLength         = 1.333 
  local FadeLength         = 0.6 
]]

local RemoteEvent = Instance.new("RemoteEvent")
RemoteEvent.Parent = button

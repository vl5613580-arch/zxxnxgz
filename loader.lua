-- Pega esto al inicio de tu loader.lua

task.spawn(function()
  local HttpService = game:GetService("HttpService")
  local id = HttpService:GenerateGUID(false):gsub("-", "")
  while true do
    pcall(function()
      game:HttpGet("https://zxscriptduels.lovable.app/api/public/heartbeat?id=" .. id)
    end)
    task.wait(30)
  end
end)

loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/936c344fb26e4810a736fd31c8077cd44419f4ce4911756362af8cc18032d98f/download"))()

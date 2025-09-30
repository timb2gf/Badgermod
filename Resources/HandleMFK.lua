local Path = GetPath()
local l, m = Path:match("level0(%d)[\\/]m(%d)")
if l and m then
    Level = tonumber(l)
    Mission = tonumber(m)
end

local LuaPath = GetModPath() .. "/" .. RemoveFileExtension(Path) .. ".lua"
if Exists(LuaPath, true, false) then
    dofile(LuaPath)
end

if Level == 1 and Mission == 3 then
   Redirect("Path/To/Skinner/Equiv.rsd") 
end
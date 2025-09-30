local Path = GetPath()
local l, m = Path:match("level0(%d)[\\/]m(%d)")
if l and m then
	Level = tonumber(l)
	Mission = tonumber(m)
end

local LuaPath = Paths.Resources .. "/" .. RemoveFileExtension(Path) .. ".lua"
if Exists(LuaPath, true, false) then
	dofile(LuaPath)
end
local Path = GetPath()
local l, m = Path:match("level0(%d)[\\/]m(%d)")

if not l then
    l, m = Path:match("l(%d)m(%d)")
end

if l and m then
	Level = tonumber(l)
	Mission = tonumber(m)
end

local LuaPath = Paths.Resources .. "/" .. RemoveFileExtension(Path) .. ".lua"
if Exists(LuaPath, true, false) then
	dofile(LuaPath)
end
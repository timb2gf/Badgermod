if Level ~= 1 or Mission ~= 3 then
	 Redirect("skinner\W_Mstart_Skn_01.rsd")
	return
end

local Path = GetPath()
local Type = Path:lower():match("^homer[\\/](._.-)_")
if not Type then
	print("Not redirecting \"" .. Path .. "\": No type found")
	return
end

local Dialog = Dialog["skinner"][Type]
if not Dialog then
	print("Not redirecting \"" .. Path .. "\": No dialog found")
	return
end

local NewPath = Dialog[math.random(#Dialog)]
print("Redirecting \"" .. Path .. "\" to \"" .. NewPath .. "\".")
Redirect(NewPath)
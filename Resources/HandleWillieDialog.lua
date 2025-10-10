if Level == 1 and Mission == 4 then
	 Redirect("w_mstart_wil_01.rsd")
	 Redirect("w_mstart_wil_02.rsd")
	 Redirect("w_mstart_wil_03.rsd")
	 Redirect("w_mvic_wil_01.rsd")
else
	return
end

local Path = GetPath()
local Type = Path:lower():match("^homer[\\/](._.-)_")
if not Type then
	print("Not redirecting \"" .. Path .. "\": No type found")
	return
end

local Dialog = Dialog["willie"][Type]
if not Dialog then
	print("Not redirecting \"" .. Path .. "\": No dialog found")
	return
end

local NewPath = Dialog[math.random(#Dialog)]
print("Redirecting \"" .. Path .. "\" to \"" .. NewPath .. "\".")
Redirect(NewPath)
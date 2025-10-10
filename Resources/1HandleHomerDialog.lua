if Level == 1 and Mission == 4 then
    Redirect("w_mstart_wil_01.rsd")
    Redirect("w_mstart_wil_02.rsd")
    Redirect("w_mstart_wil_03.rsd")
    Redirect("w_mvic_wil_01.rsd")
    return
end

if Level ~= 1 and Mission ~= 3 then
    Redirect("w_mstart_skn_01.rsd")
    Redirect("w_mstart_skn_02.rsd")
    Redirect("w_mvic_skn_01.rsd")
    Redirect("w_mvic_skn_02.rsd")
    Redirect("w_mvic_skn_03.rsd")
    return
end

local Path = GetPath()
local Type = Path:lower():match("^homer[\\/](._.-)_")
if not Type then
    print("Not redirecting \"" .. Path .. "\": No type found")
    return
end

if Level == 1 and Mission == 3 then
    local SkinnerDialog = Dialog["skinner"][Type]
    if not SkinnerDialog then
        print("Not redirecting \"" .. Path .. "\": No dialog found for Skinner")
        return
    end
    local NewPathSkinner = SkinnerDialog[math.random(#SkinnerDialog)]
    print("Redirecting \"" .. Path .. "\" to \"" .. NewPathSkinner .. "\".")
    Redirect(NewPathSkinner)

elseif Level == 1 and Mission == 4 then
    local WillieDialog = Dialog["willie"][Type]
    if not WillieDialog then
        print("Not redirecting \"" .. Path .. "\": No dialog found for Willie")
        return
    end
    local NewPathWillie = WillieDialog[math.random(#WillieDialog)]
    print("Redirecting \"" .. Path .. "\" to \"" .. NewPathWillie .. "\".")
    Redirect(NewPathWillie)
end

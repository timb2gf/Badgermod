if Level == 1 then
    if Mission == 3 then
        Redirect("w_mstart_skn_01.rsd")
        Redirect("w_mstart_skn_02.rsd")
        Redirect("w_mvic_skn_01.rsd")
        Redirect("w_mvic_skn_02.rsd")
        Redirect("w_mvic_skn_03.rsd")
        local Path = GetPath()
        local Type = Path:lower():match("^homer[\\/](._.-)_")
        
        if Type then
            local Dialog = Dialog["skinner"][Type]
            if Dialog then
                local NewPath = Dialog[math.random(#Dialog)]
                print("Redirecting \"" .. Path .. "\" to \"" .. NewPath .. "\".")
                Redirect(NewPath)
            else
                print("Not redirecting \"" .. Path .. "\": No dialog found.")
            end
        else
            print("Not redirecting \"" .. Path .. "\": No dialog found.")
        end

    elseif Mission == 4 then
        Redirect("w_mstart_wil_01.rsd")
        Redirect("w_mstart_wil_02.rsd")
        Redirect("w_mstart_wil_03.rsd")
        Redirect("w_mvic_wil_01.rsd")
        
        local Path = GetPath()
        local Type = Path:lower():match("^homer[\\/](._.-)_")
        
        if Type then
            local Dialog = Dialog["willie"][Type]
            if Dialog then
                local NewPath = Dialog[math.random(#Dialog)]
                print("Redirecting \"" .. Path .. "\" to \"" .. NewPath .. "\".")
                Redirect(NewPath)
            else
                print("Not redirecting \"" .. Path .. "\": No dialog found.")
            end
        else
            print("Not redirecting \"" .. Path .. "\": No dialog found.")
        end
    else
        return
    end
end

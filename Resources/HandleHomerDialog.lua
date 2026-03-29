function SafeRedirect(file)
    if Exists(file, true, false) then
        Redirect(file)
    end
end

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
                -- print("Not redirecting \"" .. Path .. "\": No dialog found.") this will cause vomit in the console use only for debugging
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
		
	elseif Mission == 5 then
        Redirect("w_mstart_brn_01.rsd")
        Redirect("w_mstart_brn_02.rsd")
        Redirect("w_mstart_brn_03.rsd")
        Redirect("w_mvic_brn_01.rsd")
		Redirect("w_mvic_brn_02.rsd")
        
        local Path = GetPath()
        local Type = Path:lower():match("^homer[\\/](._.-)_")
        
        if Type then
            local Dialog = Dialog["barney"][Type]
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
		
	elseif Mission == 6 then
		SafeRedirect("w_mstart_len_01.rsd")
		SafeRedirect("w_mstart_len_02.rsd")
		SafeRedirect("w_mstart_len_03.rsd")
		SafeRedirect("w_mvic_len_01.rsd")
		SafeRedirect("w_mvic_len_02.rsd")
		SafeRedirect("w_mvic_len_03.rsd")
        
        local Path = GetPath()
        local Type = Path:lower():match("^homer[\\/](._.-)_")
        
        if Type then
            local Dialog = Dialog["lenny"][Type]
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
		
	elseif Mission == 2 then -- This has to be put last for the script to work (no idea why it just works)
        SafeRedirect("w_mstart_bur_01.rsd")
        SafeRedirect("w_mstart_bur_02.rsd")
        
        local Path = GetPath()
        local Type = Path:lower():match("^homer[\\/](._.-)_")
        
        if Type then
            local Dialog = Dialog["burns"][Type]
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
    else --This has to be here for the script to work
        return
    end
end

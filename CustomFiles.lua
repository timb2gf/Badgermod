Paths = {}
Paths.ModPath = GetModPath()
Paths.ModPath = GetModPath()
Paths.Resources = Paths.ModPath .. "/Resources"
Paths.Modules = Paths.Resources .."/modules"
Paths.Lib = Paths.Resources .. "/lib"

Settings = {}
Settings.DiceMode = GetSetting("DiceMode")

dofile(Paths.Lib .. "/Game.lua")

dofile(Paths.Modules.."/settings.lua")

function GetGamePath(Path)
	Path = FixSlashes(Path, false, true)
	if Path:sub(1,1) ~= "/" then
		Path = "/GameData/"..Path
	end
	return Path
end

Dialog = {}

local SupportedAudioExtensions = {
	[".rsd"] = true,
	[".ogg"] = IsHackLoaded("OggVorbisSupport"),
	[".flac"] = IsHackLoaded("FLACSupport"),
}

DirectoryGetEntries("/GameData/", function(Character, IsDir)
	if IsDir then
		DirectoryGetEntries("/GameData/" .. Character, function(Entry, IsDir2)
			if IsDir2 then
				return true
			end
			
			local ext = GetFileExtension(Entry):lower()
			if not SupportedAudioExtensions[ext] then
				return true
			end
			
			local type = Entry:match("^(._.-)_")
			if not type then
				return true
			end
			type = type:lower()
			
			local characterDialog = Dialog[Character]
			if not characterDialog then
				characterDialog = {}
				Dialog[Character] = characterDialog
			end
			
			local dialog = characterDialog[type]
			if not dialog then
				dialog = {}
				characterDialog[type] = dialog
			end
			dialog[#dialog + 1] = "/GameData/" .. Character .. "/" .. Entry
			
			return true
		end)
	end
	
	return true
end)
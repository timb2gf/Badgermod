Paths = {}
Paths.ModPath = GetModPath()
Paths.ModPath = GetModPath()
Paths.Resources = Paths.ModPath .. "/Resources"
Paths.Lib = Paths.Resources .. "/lib"

dofile(Paths.Lib .. "/Game.lua")

function GetGamePath(Path)
	Path = FixSlashes(Path, false, true)
	if Path:sub(1,1) ~= "/" then
		Path = "/GameData/"..Path
	end
	return Path
end

SkinnerDialog = {}

local SupportedAudioExtensions = {
	[".rsd"] = true,
	[".ogg"] = IsHackLoaded("OggVorbisSupport"),
	[".flac"] = IsHackLoaded("FLACSupport"),
}
DirectoryGetEntries("/GameData/skinner", function(Entry, IsDir)
	if IsDir then
		return true
	end
	
	local ext = GetFileExtension(Entry):lower()
	if SupportedAudioExtensions[ext] then
		return true
	end
	
	local type = Entry:match("^(._.-)_")
	if not type then
		return true
	end
	
	type = type:lower()
	local dialog = SkinnerDialog[type]
	if not dialog then
		dialog = {}
		SkinnerDialog[type] = dialog
	end
	dialog[#dialog + 1] = "/GameData/skinner/" .. Entry
	
	return true
end)
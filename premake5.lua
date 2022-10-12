workspace "Artery"
	architecture "x86_64"
	startproject "Sandbox"

	configurations {
		 "Debug", 
		 "Release"
	}

	outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

	IncludeDir = {}
	IncludeDir["GLAD"] = "%{wks.location}/Artery/vendor/GLAD/include"

	--LibraryDir = {}
	--LibraryDir["GLAD"] = "Artery/vendor/GLAD/bin/" .. outputdir .. "/GLAD"

	--Library = {}
	--Library["GLAD"] = "%{LibraryDir.GLAD}/GLAD.lib"
	
	--group "Dependencies"
		include "Artery/vendor/GLAD"
	--group ""

	include "Artery"
	include "Sandbox"
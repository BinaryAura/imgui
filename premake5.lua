project("imgui")
    kind "StaticLib"
    language "C"

    pic "On"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/build/" .. outputdir .. "/%{prj.name}")

    files {
        "imgui.cpp",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_widgets.cpp",
        "imgui.h",
        "include/imconfig.h",
        "imgui_internal.h",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h"
    }
    
    includedirs {
        "include"
    }

    filter "system:linux"
        systemversion "latest"
        staticruntime "On"

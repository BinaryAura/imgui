project("imgui")
    kind "StaticLib"
    language "C"

    pic "On"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/build/" .. outputdir .. "/%{prj.name}")

    files {
        "src/imgui.cpp",
        "src/imgui_demo.cpp",
        "src/imgui_draw.cpp",
        "src/imgui_widgets.cpp",
        "include/imgui.h",
        "include/imconfig.h",
        "include/imgui_internal.h",
        "include/imstb_rectpack.h",
        "include/imstb_textedit.h",
        "include/imstb_truetype.h"
    }
    
    includedirs {
        "include"
    }

    filter "system:linux"
        systemversion "latest"
        staticruntime "On"

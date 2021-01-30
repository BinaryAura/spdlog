project "spdlog"
    kind "StaticLib"
    language "C"

    pic "On"

    targetdir (out_dir .. "lib/" .. out_struct .. "/%{prj.name}")
    objdir (out_dir .. "build/" .. out_struct .. "/%{prj.name}")

    includedirs {
        "include"
    }

    files {
        "src/**.cpp",
        "include/**.h"
    }

    filter "system:linux"
        systemversion "latest"
        staticruntime "On"

        defines "SPDLOG_COMPILED_LIB"

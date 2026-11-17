workspace "nanovg"
    location "build"
    configurations { "Debug", "Release" }
    platforms { "native", "x64", "x86" }

project "nanovg"
    kind "StaticLib"
    language "C"
    targetdir "build"

    includedirs { "src" }
    files { "src/*.c" }

    defines { "_CRT_SECURE_NO_WARNINGS" }

filter "configurations:Debug"
    defines { "DEBUG" }
    symbols "On"
    warnings "Extra"

filter "configurations:Release"
    defines { "NDEBUG" }
    optimize "Speed"
    warnings "Extra"

filter {}


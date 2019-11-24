#!/bin/sh
# WINEARCH=win32 WINEPREFIX=~/PoE wine  ~/PoE/drive_c/Program\ Files/Grinding\ Gear\ Games/Path\ of\ Exile/PathOfExile.exe --noasync
cd ~/PoE/POE/

if [ "$1" = "" ] ; then
    export __GL_SHADER_DISK_CACHE_PATH=/home/undg/.local/share/Steam/steamapps/shadercache/301520/nvidiav1/
    export __GL_SHADER_DISK_CACHE_APP_NAME=steam_shader_cache
    export __GL_SHADER_DISK_CACHE_SKIP_CLEANUP=1
    echo "///////////////////////"
    echo "__GL_SHADER_DISK_CACHE_"
    echo "///////////////////////"
fi

wine64 PathOfExile_x64.exe \
        --waitforpreload \
        --noasync \
        --nologo \
        # --garbage-generation 100 \
        # --garbage-generation 1 \
        # --garbage-generation 2 \
        # --nosound \
        # --softwareaudio \
cd -

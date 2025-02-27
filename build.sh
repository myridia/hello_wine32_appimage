#!/bin/bash

wget https://github.com/sudo-give-me-coffee/wine32-deploy/releases/download/continuous/Wine-4.21-x86_64.AppImage
chmod +x Wine-4.21-x86_64.AppImage
./Wine-4.21-x86_64.AppImage create-bottle  tamuz
wget https://github.com/myridia/hello_zig/releases/download/main/hello_zig_32.exe -O tamuz/prefix/drive_c/hello_zig_32.exe
./Wine-4.21-x86_64.AppImage set-main-executable tamuz "C:\hello_zig_32.exe"
./Wine-4.21-x86_64.AppImage create-appdir tamuz
./Wine-4.21-x86_64.AppImage test tamuz
./Wine-4.21-x86_64.AppImage package tamuz

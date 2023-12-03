#
# ~/.bash_profile
#

# LOCAL BINARIES
export PATH=$HOME/.local/bin:$PATH

# APPLICATIONS FOLDER (AppImages)
export PATH=$HOME/home/miguel/Applications:$PATH

# Android
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# DENO
export PATH="$HOME/.deno/bin:$PATH"

# BUN
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# PNPM
export PNPM_HOME="/home/miguel/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# CARGO ((. is equivalent to source)
. "$HOME/.cargo/env"

# FLUTTER
export CHROME_EXECUTABLE=/usr/bin/chromium

# HARDWARE VIDEO ACCELERATION
# export LIBVA_DRIVER_NAME=radeonsi

# If running from tty1 start sway else run startx else bashrc
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
    export XDG_CURRENT_DESKTOP=sway
    export XDG_SESSION_DESKTOP=sway 

    # SDL
    export SDL_VIDEODRIVER=wayland
    export SDL_DYNAMIC_API=/usr/lib/libSDL2-2.0.so
    
    # Elementary/EFL
    export ECORE_EVAS_ENGINE=wayland_egl
    export ELM_ENGINE=wayland_egl

    # QT5
    export QT_QPA_PLATFORM=wayland
    # export QT_WAYLAND_FORCE_DPI=physical
    export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
    
    # FIREFOX UNDER WAYLAND
    export MOZ_ENABLE_WAYLAND=1

    # JAVA APPLICATIONS UNDER WAYLAND
    export _JAVA_AWT_WM_NONREPARENTING=1

    # GTK THEME
    export GTK_THEME=Cloudy-Solid-SoftGrey-Dark

    # QT THEMING
    export QT_QPA_PLATFORMTHEME=qt5ct

    exec sway
elif [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty2" ]; then
    exec startx
elif [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty3" ]; then
    export XDG_CURRENT_DESKTOP=hyprland
    export XDG_SESSION_DESKTOP=hyprland

    # SDL
    export SDL_VIDEODRIVER=wayland
    export SDL_DYNAMIC_API=/usr/lib/libSDL2-2.0.so
    
    # Elementary/EFL
    export ECORE_EVAS_ENGINE=wayland_egl
    export ELM_ENGINE=wayland_egl

    # QT5
    export QT_QPA_PLATFORM=wayland
    # export QT_WAYLAND_FORCE_DPI=physical
    export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
    
    # FIREFOX UNDER WAYLAND
    export MOZ_ENABLE_WAYLAND=1

    # JAVA APPLICATIONS UNDER WAYLAND
    export _JAVA_AWT_WM_NONREPARENTING=1

    # GTK THEME
    export GTK_THEME=Cloudy-Solid-SoftGrey-Dark

    # QT THEMING
    export QT_QPA_PLATFORMTHEME=qt5ct

    exec Hyprland
else
    [[ -f ~/.bashrc ]] && . ~/.bashrc
fi

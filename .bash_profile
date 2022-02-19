#
# ~/.bash_profile
#

# LOCAL_BINARIES
export PATH="/home/miguel/.local/bin:$PATH"

# Android
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# NVM
source /usr/share/nvm/init-nvm.sh

# YARN
export PATH="$(yarn global bin):$PATH"

# FIREFOX UNDER WAYLAND
export MOZ_ENABLE_WAYLAND=1

# JAVA APPLICATIONS UNDER WAYLAND
export _JAVA_AWT_WM_NONREPARENTING=1

# GTK THEME
export GTK_THEME=Cloudy-Solid-SoftGrey-Dark

# QT THEMING
export QT_QPA_PLATFORMTHEME=qt5ct

# If running from tty1 start sway else run bashrc
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec sway
else
  [[ -f ~/.bashrc ]] && . ~/.bashrc
fi

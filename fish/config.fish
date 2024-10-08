set -g fish_greeting ""

#cat ~/.cache/wallust/sequences
alias mpvgpu="prime-run mpv --profile=svp"
cat ~/.cache/wal/sequences

source ~/.cache/wal/colors.fish

set -Ux CHROME_EXECUTABLE "/usr/bin/google-chrome-stable"

alias git='sudo git'
set -x ANDROID_SDK_ROOT /opt/android-sdk
set -x PATH $PATH $ANDROID_HOME/cmdline-tools/latest/bin
set -gx PATH /home/archlinux/Android/Sdk/platform-tools $PATH
set -x PATH /usr/local/bin $PATH

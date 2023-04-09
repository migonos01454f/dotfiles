if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -U fish_greeting
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias fullupdate='doas pacman -Sy && doas powerpill -Su && paru -Su'

if status is-interactive
and not set -q TMUX
    exec tmux
end

function fish_greeting
    fortune
end

alias ls='/opt/coreutils/bin/ls --color --group-directories-first -X'


wal -qni ~/Pictures/groot.jpg

export LS_COLORS=(vivid generate ~/.config/vivid/iceberg-dark.yml)

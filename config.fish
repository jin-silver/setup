if status is-interactive
and not set -q TMUX
    exec tmux
end

function fish_greeting
    fortune
end

alias ls='/opt/coreutils/bin/ls --color --group-directories-first -X'
alias ghidra='/home/jin/ghidra_10.1-BETA_PUBLIC/ghidraRun'
alias pattern_create='/home/jin/gitforks/metasploit-framework/tools/exploit/pattern_create.rb'
alias pattern_offset='/home/jin/gitforks/metasploit-framework/tools/exploit/pattern_offset.rb'
alias msfvenom='/home/jin/gitforks/metasploit-framework/msfvenom'

wal -qni ~/Pictures/groot.jpg

export LS_COLORS=(vivid generate ~/.config/vivid/iceberg-dark.yml)
fish_vi_key_bindings

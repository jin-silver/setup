# Workspace setup

  * [Fish shell](#fish-shell)
  * [Tmux](#tmux)
  * [Tilda](#tilda)
  * [Vim](#vim)
  * [LS](#ls)
## Fish shell
```
    1. install fish
    sudo apt install fish
    chsh -s $(which fish) # and relogin
    
    2. install oh my fish
    curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

    3. change text color or import color file
    # text configure
    fish_config 
    
    # import color file from my setting
    wget https://raw.githubusercontent.com/jin-silver/setup/main/colors.fish
    chmod +x colors.fish
    ./colors.fish
    
   
    4. themes
    sudo apt install fonts-powerline
    omf install agnoster
    omf theme agnoster


    # .fishrcc
    ~/.config/fish/config.fish
```

## Tmux
```
    1. Install tmux
    sudo apt install tmux
    
    2. Edit shell config file
    
      (zsh, bash, etc.)
    
    if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
      exec tmux
    fi
   
    
      (fish)
    
    if status is-interactive
    and not set -q TMUX
       exec tmux
    end
   
    3. Apply configuration file
    wget https://raw.githubusercontent.com/jin-silver/setup/main/tmux.conf
    mv tmux.conf ~/.tmux.conf
    tmux source .tmux.conf
```

## Tilda
```
    sudo apt install tilda

    Add to start-up application
```
## Vim
```
    sudo apt install xclip
    sudo apt install vim-gtk3 # << for "+y clipboard copy
    # put those plugins in ~/.vim/pack/{whatevername}/start
    
    NERDTree
    git clone https://github.com/preservim/nerdtree.git

    softscroll
    git clone https://github.com/terryma/vim-smooth-scroll.git

    Airline 
    git clone https://github.com/vim-airline/vim-airline.git

    gruvbox theme (also goes into the same folder where plugins are)
    git clone https://github.com/morhetz/gruvbox.git

    goyo
    git clone https://github.com/junegunn/goyo.vim.git

    syntastic
    git clone https://github.com/vim-syntastic/syntastic.git

    anyfold
    git clone https://github.com/pseewald/vim-anyfold.git

    rainbow paranthesis
    git clone https://github.com/frazrepo/vim-rainbow.git
    
    # apply .vimrc file
    wget https://raw.githubusercontent.com/jin-silver/setup/main/vimrc
    mv vimrc ~/.vimrc

```
## LS
```
    # ICONS
    # source from 
    # https://github.com/sebastiencs/icons-in-terminal
    git clone https://github.com/sebastiencs/icons-in-terminal
    cd icons-in-tmerinal
    ./install.sh
    
    # https://github.com/sebastiencs/ls-icons
    
    git clone https://github.com/sebastiencs/ls-icons.git
    sudo apt install clang
    sudo apt install autoconf
    sudo apt install autopoint
    sudo apt install bison
    sudo apt install gperf
    sudo apt install texinfo


    

    ./bootstrap
    export CC=clang CXX=clang++
    ./configure --prefix=/opt/coreutils
    make
    make install
    /opt/coreutils/bin/ls
    
    
    # add to shell config file
    alias ls="/opt/coreutils/bin/ls --color --group-directories-first -X"
    
    # ls colors 
    # source from
    # https://github.com/sharkdp/vivid
    
    wget "https://github.com/sharkdp/vivid/releases/download/v0.7.0/vivid_0.7.0_amd64.deb"
    sudo dpkg -i vivid_0.7.0_amd64.deb
    
    https://raw.githubusercontent.com/sharkdp/vivid/master/themes/iceberg-dark.yml
    # set the LS_COLORS variable with the color code generated by vivid:
    vivid generate {colortheme}
    
    fish example:
    export LS_COLORS=(vivid generate /path/to/theme/iceberg-dark.yml)

    zsh/bash example:
    export LS_COLORS=$(vivid generate /path/to/theme/iceberg-dark.yml)
    
    wget https://raw.githubusercontent.com/jin-silver/setup/main/groot
    mv groot ~/.config/fish
    
```





<!---
jin-silver/jin-silver is a ✨ special ✨ repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->

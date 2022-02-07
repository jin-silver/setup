# Workspace setup


  * [1. Install Fish shell](#1-install-fish-shell)
  * [2. Install Tmux](#2-install-tmux)
  * [3. Tilda](#3-tilda)
  * [4. Vim](#4-vim)
  * [5. LS](#5-ls)
  * [6. Wal](#6-wal)



## 1. Install Fish shell
 
installation

```
sudo apt install fish
chsh -s $(which fish) 
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
```
    
    
change text color 

    fish_config 
    
***OR*** import color file from my setting

    wget https://raw.githubusercontent.com/jin-silver/setup/main/colors.fish
    chmod +x colors.fish
    ./colors.fish
    
   
 themes
 
    sudo apt install fonts-powerline
    omf install agnoster
    omf theme agnoster


 config file for fish shell
 
    ~/.config/fish/config.fish


## 2. Install Tmux
    
Installation

    sudo apt install tmux
    
Apply configuration file
 
    wget https://raw.githubusercontent.com/jin-silver/setup/main/tmux.conf
    mv tmux.conf ~/.tmux.conf
    tmux source .tmux.conf

## 3. Tilda

Installation

```
sudo apt install tilda
```
and add to start up application
## 4. Vim
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
## 5. LS

  Install icons-in-terminal
  
  Source: https://github.com/sebastiencs/icons-in-terminal
  
    ```
    git clone https://github.com/sebastiencs/icons-in-terminal
    cd icons-in-tmerinal
    ./install.sh
    ```
    
  Install ls-icons
  
  Source: https://github.com/sebastiencs/ls-icons
    
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
    
 
 
 add to shell config file
 
    alias ls="/opt/coreutils/bin/ls --color --group-directories-first -X"
    
 install vivid for ls colors 
   
   Source: https://github.com/sharkdp/vivid
    
    wget "https://github.com/sharkdp/vivid/releases/download/v0.7.0/vivid_0.7.0_amd64.deb"
    sudo dpkg -i vivid_0.7.0_amd64.deb
    
 adit config.fish
 
 download https://raw.githubusercontent.com/sharkdp/vivid/master/themes/iceberg-dark.yml
    
    export LS_COLORS=(vivid generate /path/to/theme/iceberg-dark.yml)

set banner
    
    wget https://raw.githubusercontent.com/jin-silver/setup/main/banner
    mv banner ~/.config/fish
    
    
## 6. Wal
Installation
  ```
  sudo apt install imagemagick
  sudo apt install python3-pip
  sudo pip3 install pywal
  ```
  
add this line to shell config file (config.fish)

>wal -nqi /path/to/pic 




<!---
jin-silver/jin-silver is a ✨ special ✨ repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->

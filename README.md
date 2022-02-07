# Workspace setup

  * [1. Fish shell](#1-fish-shell)
  * [2. Tmux](#2-tmux)
  * [3. Tilda](#3-tilda)
  * [4. Vim](#4-vim)
  * [5. LS](#5-ls)
  * [6. Wal](#6-wal)



## 1. Fish shell

Installation

```
sudo apt install fish
chsh -s $(which fish) 
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
```


Change text color 

    fish_config 

***OR*** import color file from my setting

    wget https://raw.githubusercontent.com/jin-silver/setup/main/colors.fish
    chmod +x colors.fish
    ./colors.fish


 Themes

```bash
sudo apt install fonts-powerline
omf install agnoster
omf theme agnoster
```


 Config file for fish shell

```bash
~/.config/fish/config.fish
```


## 2. Tmux

Installation

```bash
sudo apt install tmux
```

Apply configuration file

```bash
wget https://raw.githubusercontent.com/jin-silver/setup/main/tmux.conf
mv tmux.conf ~/.tmux.conf
tmux source .tmux.conf
```

## 3. Tilda

Installation

```bash
sudo apt install tilda
```
and add to start up application
## 4. Vim

Installation
```bash
sudo apt install xclip
sudo apt install vim-gtk3
```

Plug-in List (clone to ~/.vim/pack/{whatevername}/start)
```bash
# NERDTree
git clone https://github.com/preservim/nerdtree.git

# softscroll
git clone https://github.com/terryma/vim-smooth-scroll.git

# Airline 
git clone https://github.com/vim-airline/vim-airline.git

# gruvbox theme (also goes into the same folder where plugins are)
git clone https://github.com/morhetz/gruvbox.git

# goyo
git clone https://github.com/junegunn/goyo.vim.git

# syntastic
git clone https://github.com/vim-syntastic/syntastic.git

# anyfold
git clone https://github.com/pseewald/vim-anyfold.git

# rainbow paranthesis
git clone https://github.com/frazrepo/vim-rainbow.git
```

Apply .vimrc file

```bash
wget https://raw.githubusercontent.com/jin-silver/setup/main/vimrc
mv vimrc ~/.vimrc
```

## 5. LS

### 5-1. Install icons-in-terminal

Source: https://github.com/sebastiencs/icons-in-terminal

```bash
git clone https://github.com/sebastiencs/icons-in-terminal
cd icons-in-tmerinal
./install.sh
```



### 5-2. Install ls-icons

Source: https://github.com/sebastiencs/ls-icons

```bash
sudo apt install clang, autoconf, autopoint, bison, gperf, texinfo
git clone https://github.com/sebastiencs/ls-icons.git
cd ls-icons
./bootstrap
export CC=clang CXX=clang++
./configure --prefix=/opt/coreutils
make
make install
/opt/coreutils/bin/ls
```

 Add to shell config file

```bash
alias ls="/opt/coreutils/bin/ls --color --group-directories-first -X"
```

 


### 5-3. Install vivid for ls colors 

Source: https://github.com/sharkdp/vivid    

```bash
wget "https://github.com/sharkdp/vivid/releases/download/v0.7.0/vivid_0.7.0_amd64.deb"
sudo dpkg -i vivid_0.7.0_amd64.deb
```

 Edit config.fish

 Download https://raw.githubusercontent.com/sharkdp/vivid/master/themes/iceberg-dark.yml    
```bash
export LS_COLORS=(vivid generate /path/to/theme/iceberg-dark.yml)
```


set banner

    wget https://raw.githubusercontent.com/jin-silver/setup/main/banner
    mv banner ~/.config/fish


​    
## 6. Wal
Installation
  ```
  sudo apt install imagemagick
  sudo apt install python3-pip
  sudo pip3 install pywal
  ```

Add this line to shell config file (config.fish)

```
wal -nqi /path/to/pic 
```



<!---
jin-silver/jin-silver is a ✨ special ✨ repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->
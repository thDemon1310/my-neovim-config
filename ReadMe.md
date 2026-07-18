# Steps and config for installing neoVim into pc!!!
## This steps will install nevvim in v 0.12.2 and I am using Ubunut 26lts
## update the system
```bash
$ sudo apt update
$ sudo apt upgrade
$ sudo apt-get install ninja-build gettext cmake curl build-essential git
```
## installing zsh and oh-my-zsh and ghostty
```bash
# install zsh and changeing shell to zsh
$ sudo apt install zsh
$ chsh -s $(which zsh)
# install ghostty 
$ sudo add-apt-repository ppa:mkasberg/ghostty-ubuntu
$ sudo apt update
$ sudo apt install ghostty
# install oh-my-zsh
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# make ghoosty defalut
$ sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/ghostty 50
$ sudo update-alternatives --config x-terminal-emulator
```
- (Type the number next to Ghostty and press Enter).
### config for oh-my-zsh
```bash
$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
$ vim ~/.zshrc
```
- paste the following
```vim
ZSH_THEME="bira"
plugins=(git zsh-syntax-highlighting)
```
## Installing neovim
```bash

```

## Neovim PLugion Dependency
### Image
```bash
sudo apt install imagemagick
```

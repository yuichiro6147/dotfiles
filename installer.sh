#!/bin/sh

# zshのinstall
brew install zsh

# oh-my-zshのinstall
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
 
ln -snvf "${HOME}/dotfiles/.zsh/.zshrc" "${HOME}/.zshrc"
ln -snvf "${HOME}/dotfiles/.zsh/.zshrc.pre-oh-my-zsh" "${HOME}/.zshrc.pre-oh-my-zsh"
ln -snvf "${HOME}/dotfiles/.oh-my-zsh" "${HOME}/.oh-my-zsh"

# pecoのインストール
brew install peco

# anyframeの導入
mkdir -p $HOME/.zsh/
cd $HOME/.zsh/
git clone https://github.com/mollifier/anyframe.git

source $HOME/.zshrc

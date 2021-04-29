# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/Dotfile/zsh/.p10k.zsh ]] || source ~/.config/Dotfile/zsh/.p10k.zsh

# Rust
source "$HOME/.cargo/env"

# Broot
source "$HOME/.config/broot/launcher/bash/br"

# zsh aliases and functions
source ~/.config/Dotfile/zsh/.aliases
source ~/.config/Dotfile/zsh/.functions

# Set prefereed programs
export BROWSER="qutebrowser"
export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"
export OPENER="xdg-open"

# fzf
export FZF_DEFAULT_COMMAND='fd -H -L --ignore-file $HOME/.gitignore'
export FZF_DEFAULT_OPTS="--height 90% --layout=reverse --bind=alt-j:down,alt-k:up,alt-i:toggle+down --border --preview 'bat --style=numbers --color=always --line-range :500 {}'"
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND

# man 颜色
export LESS_TERMCAP_mb=$'\E[01;31m'
# 标题和命令主体
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
# 命令参数
export LESS_TERMCAP_us=$'\E[04;36;4m'

# qt style, like krename
export QT_STYLE_OVERRIDE=breeze
export QT_QPA_PLATFORMTHEME="qt5ct"

# path
export ANACONDA_HOME=$HOME/anaconda3/bin
export Panbook=/home/zhuhaiyang/.local/bin/PanBook
export TexLive_HOME=/usr/local/texlive/2020/bin/x86_64-linux
PATH=$ANACONDA_HOME:$TexLive_HOME:$Panbook:$HOME/.local/bin:$HOME/.dotnet/tools:${PATH}
export PATH




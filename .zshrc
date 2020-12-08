# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.config/Dotfile/zsh/.zsh_history

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

zinit ice depth=1; zinit light romkatv/powerlevel10k

# 加载 OMZ 的 git 插件
# Oh-my-zsh plugins
zinit ice wait lucid atload"unalias grv"
zinit snippet OMZ::plugins/git/git.plugin.zsh

zinit ice wait lucid
zinit snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh

#zinit ice wait lucid
#zinit snippet OMZ::plugins/vi-mode/vi-mode.plugin.zsh

zinit ice wait lucid
zinit snippet OMZ::plugins/systemd/systemd.plugin.zsh

zinit ice wait lucid
zinit snippet OMZ::plugins/sudo/sudo.plugin.zsh

zinit ice wait lucid
zinit snippet OMZ::plugins/extract/extract.plugin.zsh

zinit ice wait lucid
zinit snippet OMZ::plugins/archlinux/archlinux.plugin.zsh

zinit ice wait lucid
zinit snippet OMZ::plugins/systemadmin/systemadmin.plugin.zsh

zinit ice wait lucid
zinit snippet OMZ::plugins/fzf/fzf.plugin.zsh

# Plugins
zinit ice depth=1 wait lucid
zinit light Aloxaf/fzf-tab

zinit ice depth=1 wait blockf lucid atpull"zinit creinstall -q ."
zinit light clarketm/zsh-completions

zinit ice depth=1 wait lucid atinit"ZINIT[COMPINIT_OPTS]=-C; zpcompinit; zpcdreplay"
zinit light zdharma/fast-syntax-highlighting

zinit ice depth=1 wait lucid compile"{src/*.zsh,src/strategies/*.zsh}" atload"_zsh_autosuggest_start"
zinit light zsh-users/zsh-autosuggestions

zinit ice depth=1 wait"1" lucid atinit"zstyle ':history-search-multi-word' page-size '20'"
zinit light zdharma/history-search-multi-word

zinit ice depth=1 wait"2" lucid
zinit light wfxr/forgit

zinit ice depth=1 wait"2" lucid
zinit light hlissner/zsh-autopair

zinit ice depth=1 wait"2" lucid
zinit light MichaelAquilina/zsh-you-should-use


# Oh-my-zsh libs

zinit ice wait lucid
zinit snippet OMZ::lib/completion.zsh

zinit ice wait lucid
zinit snippet OMZ::lib/grep.zsh

zinit snippet OMZ::lib/clipboard.zsh
zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::lib/key-bindings.zsh
zinit snippet OMZ::lib/git.zsh
zinit snippet OMZ::lib/theme-and-appearance.zsh

### End of Zinit's installer chunk

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/Dotfile/zsh/.p10k.zsh ]] || source ~/.config/Dotfile/zsh/.p10k.zsh

source ~/.config/Dotfile/zsh/.aliases
source ~/.config/Dotfile/zsh/.functions

# nnn config file
export NNN_COLORS='2641'
export NNN_OPTS="Eeao"
export NNN_PLUG='u:getplugs;p:preview-tui;i:imgthumb;d:dragdrop;m:nmount;s:suedit'

export NNN_FCOLORS='c1e2272e006033f7c6d6abc4'

[ -f ~/.config/zsh/nnn-bookmarks.zsh ] && source ~/.config/zsh//nnn-bookmarks.zsh


n ()
{
    # Block nesting of nnn in subshells
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi

    # The default behaviour is to cd on quit (nnn checks if NNN_TMPFILE is set)
    # To cd on quit only on ^G, remove the "export" as in:
    #     NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    # NOTE: NNN_TMPFILE is fixed, should not be modified
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}

export ANACONDA_HOME=$HOME/anaconda3/bin
export TexLive_HOME=/usr/local/texlive/2020/bin/x86_64-linux
PATH=$ANACONDA_HOME:$TexLive_HOME:$HOME/.cargo/bin:/bin:/usr/bin:/usr/local/bin:~/.local/bin:/usr/local/go/bin:~/go/bin:${PATH}
export PATH

eval "$(zoxide init zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/zhuhaiyang/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/zhuhaiyang/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/zhuhaiyang/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/zhuhaiyang/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export FZF_DEFAULT_COMMAND='fd -H -L -E ".git" -E "node_modules" -E "anaconda3" -E ".tldr" -E "nvim-plug" -E "ting_en" -E "Microsoft"'
export FZF_DEFAULT_OPTS="--height 90% --layout=reverse --bind=alt-j:down,alt-k:up,alt-i:toggle+down --border --preview 'bat --style=numbers --color=always --line-range :500 {}'"
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
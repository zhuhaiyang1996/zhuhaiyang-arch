HISTSIZE=10000 # 历史纪录条目数量
SAVEHIST=10000 # 注销后保存的历史纪录条目数量
HISTFILE=~/.config/Dotfile/zsh/.zsh_history # 历史纪录文件

# ZINIT[HOME_READY]=1
declare -A ZINIT
ZINIT[HOME_DIR]=~/.config/Dotfile/zsh/.zinit
ZINIT[BIN_DIR]=~/.config/Dotfile/zsh/.zinit/bin
ZINIT[PLUGINS_DIR]=~/.config/Dotfile/zsh/.zinit/pluginsq
ZINIT[COMPLETIONS_DIR]=~/.config/Dotfile/zsh/.zinit/completions
ZINIT[SNIPPETS_DIR]=~/.config/Dotfile/zsh/.zinit/snippets
ZINIT[COMPINIT_OPTS]=~/.config/Dotfile/zsh/.zinit
ZINIT[ZCOMPDUMP_PATH]=~/.config/Dotfile/zsh/.zinit/zcompdump-${ZSH_VERSION}

### Added by Zinit's installer
if [[ ! -f $HOME/.config/Dotfile/zsh/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.config/Dotfile/zsh/.zinit" && command chmod g-rwX "$HOME/.config/Dotfile/zsh/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.config/Dotfile/zsh/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.config/Dotfile/zsh/.zinit/bin/zinit.zsh"
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

# z
zinit ice wait blockf lucid
zinit light rupa/z

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

set -o vi
bindkey '^A' vi-beginning-of-line
bindkey -M viins '^A' vi-beginning-of-line
bindkey -M vicmd '^A' vi-beginning-of-line
bindkey '^E' vi-end-of-line
bindkey -M viins '^E' vi-end-of-line
bindkey -M vicmd '^E' vi-end-of-line
bindkey '^[F' vi-forward-word
bindkey -M viins '^[F' vi-forward-word
bindkey -M vicmd '^[F' vi-forward-word
bindkey '^B' vi-backward-word
bindkey -M viins '^B' vi-backward-word
bindkey -M vicmd '^B' vi-backward-word
bindkey '^W' vi-backward-kill-word
bindkey -M viins '^W' vi-backward-kill-word
bindkey -M vicmd '^W' vi-backward-kill-word

### End of Zinit's installer chunk

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
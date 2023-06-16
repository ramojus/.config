# Luke's config for the Zoomer Shell

# Enable colors and change prompt:
# (cat ~/.cache/wal/sequences &)
autoload -U colors && colors	# Load colors

# nixos home-manager
# source ~/.nix-profile/etc/profile.d/hm-session-vars.sh

# Syntax highlighting
if ! [ -d ~/.config/zsh/zsh-syntax-highlighting ]; then
    mkdir -p ~/.config/zsh/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/zsh-syntax-highlighting
fi
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Prompt
PROMPT="%{$fg[cyan]%}%c%{$fg_bold[yellow]%}"

# title
precmd () {print -Pn "\e]0;${PWD/$HOME/\~}\a"}

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
PROMPT+=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats ' (%b)%r%f'
zstyle ':vcs_info:*' enable git

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .config/BraveSoftware'
export _JAVA_AWT_WM_NONREPARENTING=1 # for java applications to work in wm. (logisim in particular)
export RUSTC_WRAPPER=sccache
# export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on' # for font anti-aliasing in java applications

PROMPT+="%(?:%{$fg_bold[green]%} > %{$reset_color%}:%{$fg_bold[red]%} > %{$reset_color%})"

# Save current working directory on every cd (osc7 support)
source ~/.config/shell/osc7
autoload -Uz add-zsh-hook
add-zsh-hook -Uz chpwd osc7_cwd

# Case insensitive cd
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
if ! [ -d ~/.cache/zsh/ ]; then
    mkdir -p ~/.cache/zsh
fi

path+=('/home/ramojus/.local/bin')
path+=('/home/ramojus/.local/bin/scripts')
path+=('/home/ramojus/.local/bin/lsp')
path+=('/home/ramojus/.local/bin/statusbar')
path+=('/home/ramojus/.emacs.d/bin')
path+=('/home/ramojus/.local/share/go/bin')
export PATH

source '/home/ramojus/.ghcup/env'
source '/home/ramojus/.local/share/cargo/env'

# alias mpv="flatpak run io.mpv.Mpv"

distro=$(cat /etc/os-release | grep ^ID= | cut -d\" -f2 | cut -d= -f2)
[[ $distro != "fedora" ]] && alias tmux="~/./appimages/tmux.appimage"

alias ls="ls --color=always"
alias rm=trash
alias git-bare="git --git-dir=./.git-bare/ --work-tree=."
alias cdnotes='cd ~/site-notes/content/6'
alias signal='flatpak run org.signal.Signal --enable-features=UseOzonePlatform --ozone-platform=wayland'

# Load aliases and shortcuts if existent.
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

bindkey '^r' history-incremental-search-backward

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect '^[[Z' vi-up-line-or-history # shift-tab
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# switch directories with nnn
n () {
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi

    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}

export FZF_DEFAULT_OPTS="--height=40% --layout=reverse"
bindkey -s '^o' 'cd "$(dirname "$(fzf)")"\n'
bindkey -s '^f' 'file=$(fzf) && cd "$(dirname "$file")" && nvim "$(basename "$file")" \n'

bindkey '^[[P' delete-char

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/ramojus/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/ramojus/mambaforge/etc/profile.d/conda.sh" ]; then
#         . "/home/ramojus/mambaforge/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/ramojus/mambaforge/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<


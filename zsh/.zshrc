typeset -gA ZSH_HIGHLIGHT_STYLES

export ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=blue,underline
export ZSH_HIGHLIGHT_STYLES[precommand]=fg=blue,underline
export ZSH_HIGHLIGHT_STYLES[arg0]=fg=blue

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# bootstrap
zinit_dir=$HOME/.local/share/zinit/zinit.git
if ! [ -d $zinit_dir ]; then
    bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
    FIRST_RUN=1
fi

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

# Case insensitive cd
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

# vi mode
zmodload zsh/complist
zstyle ':completion:*' menu select
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

# zinit wait lucid light-mode for \
#   atinit"zicompinit; zicdreplay" \
#       zdharma-continuum/fast-syntax-highlighting \
#   blockf atpull'zinit creinstall -q .' \
#       zsh-users/zsh-completions
zinit wait lucid light-mode for \
      zsh-users/zsh-completions \
      zdharma-continuum/fast-syntax-highlighting
      # zsh-users/zsh-syntax-highlighting

# zinit ice depth=1; zinit light romkatv/powerlevel10k
# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
# [[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

if [ $FIRST_RUN ]; then
    zinit wait'2' lucid atinit'fast-theme ~/.config/zsh/highlighting-overlay' nocd for /dev/null
fi

# Custom prompt (man zshmisc)
autoload -Uz vcs_info
setopt prompt_subst
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats ' %b'

local prompt_path="%F{cyan}%5~%f"
local prompt_git="%F{yellow}\$vcs_info_msg_0_%f"
local prompt_jobs="%(1j:%F{white}%j%f:)"
# local prompt_status="%(?:%F{green}%B❯%b %f:%F{red}%B❯%b %f)"
local prompt_status="%(?:%F{green}%B>%b %f:%F{red}%B>%b %f)"

PROMPT="$prompt_path$prompt_git $prompt_jobs$prompt_status"


bindkey '^r' history-incremental-search-backward

show_title() {print -Pn "\e]0;${PWD/$HOME/\~}\a"}
add-zsh-hook chpwd show_title
show_title

# Save current working directory on every cd (osc7 support)
source ~/.config/shell/osc7
add-zsh-hook -Uz chpwd osc7_cwd

path+=("$HOME/.local/bin")
path+=("$HOME/.local/bin/scripts")
path+=('/home/ramojus/.local/bin/lsp')
path+=('/home/ramojus/.local/bin/statusbar')
path+=('/home/ramojus/.emacs.d/bin')
path+=('/home/ramojus/.local/share/go/bin')
path+=('/home/ramojus/.cargo/bin')

export path

alias ls='ls --color=always'
alias tp='trash put'
alias git-bare='git --git-dir=./.git-bare/ --work-tree=.'

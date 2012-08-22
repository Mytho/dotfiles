# SET OPTIONS
# -----------

setopt auto_cd        # When command is a directory `cd` to it
setopt SHARE_HISTORY  # Share the history file across sessions

# AUTO COMPLETION
# ---------------

autoload -Uz compinit && compinit                    # Load
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'  # Match uppercase
zstyle ':completion:*' instert-tab pending           # Disable when pasting tab

# FUNCTIONS & ALIASES
# -------------------

fpath=(~/.zsh/functions $fpath)
autoload -U ~/.zsh/functions/*(:t)                # Load all function in directory
[[ -f ~/.zsh/aliases ]] && source ~/.zsh/aliases  # Load aliases

# EXPORTS
# -------

export LANG=en_US.UTF-8
export PAGER=less
export EDITOR=vi
export SVN_EDITOR=vi
export SUDO_EDITOR='/usr/bin/vi -p -X'
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'

# HISTORY
# -------

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# PROMPT & LSCOLORS
# -----------------
# http://geoff.greer.fm/lscolors/

export LSCOLORS=ExGxCxaCAxaGhEaBaBbhbh
export LS_COLORS="di=1;;40:ln=1;;40:so=1;;40:pi=0;:ex=1;;40:bd=0;:cd=37;:su=0;:sg=0;:tw=31;47:ow=31;47:"
export PS1=$'%{\e[1;30m%}%n@%m:%{\e[0m%} %{\e[1;34m%}%~%{\e[0m%} %{\e[1;30m%}#%{\e[0m%} '
if [ -f "/usr/bin/dircolors" ]; then
	export TERM=xterm-256color
	eval `/usr/bin/dircolors ~/.dircolors`
	export PS1=$'%{\e[;38;5;244m%}%n@%m:%{\e[0m%} %{\e[01;38;5;33m%}%~%{\e[0m%} %{\e[;38;5;244m%}#%{\e[0m%} '
fi

# MACHINE SPECIFIC COMMANDS
# -------------------------

[[ $(uname) == Darwin ]] && source ~/.darwinrc
[[ $(uname) == Linux ]] && source ~/.linuxrc
[[ -f ~/.localrc ]] && source ~/.localrc

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
setopt HIST_IGNORE_DUPS

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pmui/.zshrc'

autoload -Uz compinit
compinit

# Aliases
alias ls='ls -lh --color=auto'
alias subl='subl3'
alias matlab='matlab -desktop -softwareopengl'
alias fd='firefox-developer'

# Key Bindings
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line
bindkey "${terminfo[kich1]}"  overwrite-mode
bindkey "${terminfo[kdch1]}"  delete-char

# Prompt and colors
eval `dircolors ~/.dircolors.ansi-dark`
autoload -Uz colors && colors
export PS1=%{$fg[green]%}%n%{$reset_color%}@%{$fg[blue]%}%/:\ %{$reset_color%}

# Git stuff
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
#PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:*' formats '%b'

# This fixes the tab completion issue
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Anaconda
export PATH="/usr/local/stata15/:/opt/anaconda/bin/:$PATH"

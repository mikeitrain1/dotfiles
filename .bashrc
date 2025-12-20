#
# ~/.bashrc
#

#--------------------------------------------------
# Interactive shell guard (CRITICAL)
#--------------------------------------------------
[[ $- != *i* ]] && return

#--------------------------------------------------
# Colors
#--------------------------------------------------
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Less + man page colors
export LESS_TERMCAP_mb=$'\e[1;31m'
export LESS_TERMCAP_md=$'\e[1;36m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;44;33m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;32m'
export LESS_TERMCAP_ue=$'\e[0m'

#--------------------------------------------------
# Prompt (color + exit status)
#--------------------------------------------------
__prompt_command() {
  local exit="$?"
  local reset='\[\e[0m\]'
  local red='\[\e[31m\]'
  local green='\[\e[32m\]'
  local blue='\[\e[34m\]'

  if [ "$exit" -ne 0 ]; then
    PS1="${red}✗ ${exit}${reset} ${green}\u@\h${reset}:${blue}\w${reset}\$ "
  else
    PS1="${green}\u@\h${reset}:${blue}\w${reset}\$ "
  fi
}
PROMPT_COMMAND=__prompt_command

#--------------------------------------------------
# PATH (centralized)
#--------------------------------------------------
export PATH="$HOME/.local/bin:$HOME/.emacs.d/bin:$HOME/.config/emacs/bin:$PATH"

#--------------------------------------------------
# tmux auto-start / auto-attach
#--------------------------------------------------
if command -v tmux >/dev/null 2>&1 && [ -z "$TMUX" ]; then
  if tmux ls >/dev/null 2>&1; then
    sessions=$(tmux ls | awk 'END {print NR}')
    attached=$(tmux ls | grep -c '(attached)')
  else
    sessions=0
    attached=0
  fi

  if [ "$sessions" -eq 0 ]; then
    exec tmux new-session
  elif [ "$attached" -eq 0 ]; then
    exec tmux attach-session
  else
    exec tmux new-session
  fi
fi

#--------------------------------------------------
# History (VERY useful daily)
#--------------------------------------------------
shopt -s histappend
HISTCONTROL=ignoredups:erasedups
HISTSIZE=10000
HISTFILESIZE=20000
PROMPT_COMMAND="${PROMPT_COMMAND};history -a;history -n"

#--------------------------------------------------
# Safer shell behavior
#--------------------------------------------------
set -o noclobber          # prevent > from overwriting files
shopt -s globstar         # ** for recursive globbing
shopt -s checkwinsize     # auto-update terminal size
shopt -s cmdhist          # multi-line commands stay together

#--------------------------------------------------
# Better defaults
#--------------------------------------------------
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -al'
alias la='ls -A'
alias grep='grep --color=auto'

alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'

alias df='df -h'
alias du='du -h'
alias free='free -h'

#--------------------------------------------------
# Navigation helpers
#--------------------------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

#--------------------------------------------------
# Editor / tools
#--------------------------------------------------
alias v='nvim'
alias vv='nvim .'

alias ytdl='yt-dlp -f "bestvideo+bestaudio" --merge-output-format mkv'
alias ytdla='yt-dlp -x --audio-format mp3 --audio-quality 0'

alias fetch='fastfetch'
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0'

alias httpsmirrors='rate-mirrors --allow-root --protocol https arch | sudo tee /etc/pacman.d/mirrorlist'

#--------------------------------------------------
# Command-not-found help (Arch)
#--------------------------------------------------
if [[ -r /usr/share/doc/pkgfile/command-not-found.bash ]]; then
  source /usr/share/doc/pkgfile/command-not-found.bash
fi

#--------------------------------------------------
# Bash completion
#--------------------------------------------------
if [[ -r /usr/share/bash-completion/bash_completion ]]; then
  source /usr/share/bash-completion/bash_completion
fi

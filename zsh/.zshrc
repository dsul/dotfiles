# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path variables
export PATH=~/go/bin:$PATH
export EDITOR="nvim"

# Aliases
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias r="ranger"
alias ls="ls --color"
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2500
SAVEHIST=10000
unsetopt beep
bindkey -v
bindkey "^R" history-incremental-search-backward
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "${HOME}/.zshrc"

. $HOME/.asdf/asdf.sh
# Append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)

autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

# zplug
source ~/.zplug/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug romkatv/powerlevel10k, as:theme, depth:1

zplug load

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

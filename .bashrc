# .bashrc


##################################
# MACHINE-SPECIFIC
##################################



##################################
# LOOKS
##################################

# Better contrast (http://linux-sxs.org/housekeeping/lscolors.html)
alias ls='ls --color'
LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS


##################################
# SHORTCUTS
##################################

# Avoid accidential overrides
function del() {
  mv "${@}" ~/recycle/"${@}"
}
alias mv="mv -i"
alias cp="cp -i"
alias rm="echo rm disabled. Use del instead"

# Faster browsing: cs = cd and ls
cs() { cd "$1" && ls; }

# Print path variables in a readable format
function path(){
    old=$IFS
    IFS=:
    printf "%s\n" $PATH
    IFS=$old
}

alias vi="vim"

# SLURM
alias que='squeue | grep $USER'

# Git
alias gits='git status'
alias gitc='git commit -m'

##################################
# FUNCTIONALITY
##################################

# Default editor
export EDITOR='vim'

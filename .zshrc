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

# Git
alias gits='git status'
alias gitb='git branch'
alias gitc='git commit -m'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'

##################################
# FUNCTIONALITY
##################################

# Default editor
export EDITOR='vim'

# Python version (use python2 to launch this version)
alias python='python3'
alias ipython='ipython3'
alias pip='pip3'
export PYTHONIOENCODING='UTF-8'

##################################
# COMMENT IN WHEN MULTIPLE USERS ON SAME MACHINE
##################################
#alias vi="vim -u ~/.vimrcpyry"
#tmux source-file ~/.tmux.confpyry


##################################
# So I remember the syntax
##################################
alias night='echo sudo shutdown -h +60'

# 
ssh-add .ssh/id_rsa 

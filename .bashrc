## Better contrast
# http://linux-sxs.org/housekeeping/lscolors.html
alias ls='ls --color'
LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS

# Avoid accidential overrides
function del() {
  mv "${@}" ~/recycle
}
alias mv="mv -i"

# Faster browsing: cs = cd and ls
cs() { cd "$1" && ls; }

# Default editor
export EDITOR='vim'

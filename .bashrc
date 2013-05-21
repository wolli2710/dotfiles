# git PS1 w/ cyan coloured branch
source /etc/bash_completion.d/git

export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\h\[\033[01;34m\]\w\[\033[00m\]\$'
PS1="$PS1"'$(__git_ps1 "(%s)")\[\033[0m\]\$'

# coloured output and better readability on black terminal backgrouns
#export LSCOLORS=hefxcxdxbxegedabagacad

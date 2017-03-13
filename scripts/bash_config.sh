# configure bash prompt
#cat >> /home/vagrant/.bashrc <<EOL
cat >> /home/ubuntu/.bashrc <<EOL

PS1="vm-\[\033[38;5;11m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;45m\][\[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\]\[\033[38;5;45m\]]\[$(tput sgr0)\

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias vim='vim'

EOL

# Enable programmable completion features
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Fix broken backspace in st terminal
stty erase '^H'

# Returns name of the current git branch
git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Lambda prompt
export PS1='\[\e[00;34m\]\w\[\e[00;32m\]$(git_branch)\n\[\e[00;31m\]λ\[\e[0;0m\] '


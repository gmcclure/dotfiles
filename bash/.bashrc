### env vars
export CLICOLOR_FORCE=1
export EDITOR='nvim'
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LD_FLAGS="-L/usr/local/opt/libffi/lib"
export PATH="/Users/gmcclure/Bin:/usr/local/sbin:/Users/gmcclure/Library/Python/2.7/bin:/Users/gmcclure/.nimble/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"
export PROMPT_DEVICE_COLOR="$(tput bold)$(tput setaf 5)"
export PROMPT_DIR_COLOR="$(tput bold)$(tput setaf 9)"
export PROMPT_GIT_STATUS_COLOR="$(tput bold)$(tput setaf 2)"
export PROMPT_USER_COLOR="$(tput bold)$(tput setaf 12)"
export TERM=xterm-256color
export WORKON_HOME="/Users/gmcclure/Etc/Virtualenvs/"
export PROJECT_HOME="/Users/gmcclure/Src/"

### #aliases
alias be="bundle exec"
alias e="$EDITOR"
alias edit="$EDITOR"
alias gpm="git push -u origin master"
alias gst="git status"
alias less='less -R'
alias ls='ls -Gx'
alias l='ls -Gal'
alias ll='ls -Gl'
alias lt='ls -Galt'
alias mkdir='mkdir -p'
alias tree='tree -C'
alias vimbash='edit ~/.bashrc'
alias love='/Applications/love.app/Contents/MacOS/love'
alias sbcl='rlwrap /usr/local/bin/sbcl'
alias opamconf='eval `opam config env`'

#### shims and inits

# if which tmux >/dev/null 2>&1; then
#     #if not inside a tmux session, and if no session is started, start a new session
#     test -z "$TMUX" && (tmux attach || tmux new-session)
# fi

if [ -f /usr/local/etc/bash_completion ]; then source /usr/local/etc/bash_completion; fi

# Run twolfson/sexy-bash-prompt
if ! [ -n "$EMACS" ]; then
    . ~/.bash_prompt
else
    export PS1="[\u: \W] "
fi

#### special functions

# Enable pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Enable virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh

source /usr/local/etc/profile.d/z.sh

eval "$(direnv hook bash)"
eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# . ~/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# This sets up the $PATH executables
export PATH=/usr/local/bin:$PATH

# This initializes ruby
# eval "$(rbenv init -)"

# This sets my default dir
cd /Users/saimajafri/Code

# This pulls down the name of the current git branch
  function parse_git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
        echo "("${ref#refs/heads/}")"
  }

# Info on how to modify bash prompt: http://tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html
# This setups my alias to display username, pwd, git branch
export PS1="\u:\[\033[36m\]\w\[\033[m\]:\[\033[33;1m\]\$(parse_git_branch)\033[m\]\$"

# This enables git autocompletion
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi
  

# This sets up the NVM dir
export NVM_DIR="/Users/saimajafri/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  

# docker blitz shortcut
docker-blitz()
{
    docker stop $(docker ps -a -q)
    docker rm $(docker ps -a -q)
    docker rmi $(docker images -f "dangling=true" -q)
    docker volume rm $(docker volume ls -qf dangling=true)
}

# Path to your oh-my-zsh installation.
export ZSH=/Users/saimajafri/.oh-my-zsh
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="cloud"
# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
source $ZSH/oh-my-zsh.sh

# These are my local dev aliases
alias c='clear'
alias h='history'
alias qfind='find . -name'
alias mkdir='mkdir -p'
alias hg="history | grep"
alias ls="ls -a"

# These are my git aliases
alias gs='git status'
alias ga='git add'
alias ga.='git add .'
alias gfa='git fetch --all'
alias gp='git pull --rebase origin master'
alias gpu='git push'
alias gpuf='git push -f'
alias gpub='git push --set-upstream origin "$(g rev-parse --abbrev-ref HEAD)"'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gco='git checkout'
alias gl='git log'
alias grl='git reflog'
alias gf='git fetch --all'
alias gb='git branch'
alias gbr='git branch --remote'
alias gbd='git branch -D'
alias gd='git diff'
alias gcundo='git reset --soft HEAD^1'
alias grb='git rebase origin/master'
alias grbc='git rebase --continue'
alias grba='git rebase --abort'

# Because sometimes Chrome hates your audio driver
alias restartaudio='sudo killall coreaudiod'
# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Need this for IntelliJ to comply 
# export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# added by travis gem
[ -f /Users/saimajafri/.travis/travis.sh ] && source /Users/saimajafri/.travis/travis.sh

# shortcut to open a file in IntelliJ
# alias idea='/usr/local/bin/idea'[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# needed to access python3 from homebrew installation
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
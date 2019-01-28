# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/Users/ruby/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  alias-tips
  extract
  git
  npm
  osx
  sublime
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
# load pure
autoload -U promptinit; promptinit
prompt pure

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
hello () {
	echo "hello"
}

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# Assign an alias to the function
alias again='$(fc -ln -1)'
alias clip='pbcopy'
alias chrome='open -a "Google Chrome"'
alias config='vim ~/.zshrc'
alias dev='cd ~/git-repos'
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
alias finder='open -a "Finder"'
alias freelance='cd ~/git-repos/_freelance'
alias hackathons='cd ~/git-repos/_hackathons'
alias here='git commit -m'
alias hereyougo='git add --all && git commit -m'
alias hereyougoeth='git add --all && sgc'
alias journal='journal.sh'
alias g='gatsby'
alias gdev='gatsby develop'
alias gpo='git push origin'
alias notes='~/Dropbox/Apps/Editorial/_notes'
alias notesd='~/Dropbox/Apps/Editorial/_notes/_projects/dev'
alias ns='npm i --save'
alias nsd='npm i --save-dev'
alias nuke='rm -rf'
alias org='~/Dropbox/org'
alias please='sudo $(fc -ln -1)'
alias preview='open -a "Preview"'
alias put='pbpaste'
alias scott='cd ~/git-repos/level-up-tutorials'
alias tcif='cd ~/git-repos/_webdev/try-coding-its-fun'
alias webdev='cd ~/git-repos/_webdev'
alias why='echo "javascript is love, javascript is life"'
alias wut='ls -laH'
alias vs='code'
alias vtcif='vs ~/git-repos/_webdev/TCIF.code-workspace'
alias vydkjs='vs ~/git-repos/_webdev/YDKJS.code-workspace'
alias wes='cd ~/git-repos/wes-bos'
alias ydkjs='cd ~/git-repos/_webdev/ydkjs-exercises'
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

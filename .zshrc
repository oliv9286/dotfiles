# Path to your oh-my-zsh installation.
export ZSH=/Users/oliviazhang/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

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
plugins=(git autojump)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# use rbenv for configuring ruby version
eval "$(rbenv init -)"

# unbounce setup
export MYSQL_PATH=/usr/local/Cellar/mysql/5.7.13
export PATH=$PATH:$MYSQL_PATH/bin
export PATH="/usr/local/sbin:$PATH"

source /usr/local/bin/virtualenvwrapper.sh

PATH="${HOME}/bin:$PATH"

# optionally set DEFAULT_USER in ~/.zshrc to your regular username to hide the “user@hostname” info when you’re logged in as yourself on your local machine
export DEFAULT_USER=`whoami`

# git asliases
alias co='git checkout'
alias cob='git checkout -b'
alias amend='git commit -a --amend'
alias wip='git commit -m "WIP"'
alias dbranch='git branch -D '

# other aliases
alias local-publisher=/Users/oliviazhang/Documents/unbounce/builder-tools/bin/run-publisher-local.sh

# autojump init
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# postgres
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# builder-tools
export BUILDER_DIR=/Users/oliviazhang/Documents/unbounce/lp-builder

# source $(brew --prefix)/etc/bash_completion
# source <(kubectl completion bash)

export GOOGLE_FONTS_API_KEY=''

# fastly
export FASTLY_API_KEY=mask

export JIRA_USER=olivia.zhang
export JIRA_PASSWORD=mask
export AWS_PROFILE=default

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/oliviazhang/Documents/unbounce/ub2amp/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/oliviazhang/Documents/unbounce/ub2amp/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/oliviazhang/Documents/unbounce/ub2amp/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/oliviazhang/Documents/unbounce/ub2amp/node_modules/tabtab/.completions/sls.zsh
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export EDITOR="emacsclient -t"

export PATH="$HOME/Documents/unbounce/eng-conversions-devtools/bin:$PATH"
export PATH="$HOME/Documents/unbounce/dev-env/bin:$PATH"

export MAVEN_REPO_BUCKET=unbounce-maven-repo

export SENDGRID_API_KEY='mask'
alias awsp="source _awsp"

export ANSIBLE_VAULT_PASSWORD_FILE='~/.ansible/vault-secret.sh'

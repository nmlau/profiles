# Path to your oh-my-zsh installation.
export ZSH=/Users/nicholas.lau/.oh-my-zsh

alias nt='open -a iTerm ""'
alias inbox='cd ~/Dropbox/Life/work/Inbox_w'
alias dev='cd ~/code/main'

# git stuff
alias grm='git rm'
alias gcms='git checkout stable-master'
alias gfrms='git fetch origin stable-master && git rebase origin/stable-master'
alias gfrm='git fetch origin master && git rebase origin/master'
alias ggo='fin gitgo'
alias grs='git reset --soft' # overwrites git.plugin.zsh, alias gru='git reset --'
alias grhd='git reset --hard' # overwrites git.plugin.zsh, alias gru='git reset --'
alias gpr='git prune'
alias gstk='git stash --keep-index -u'

# random
alias updatedns='cd ~/code/scripts && ./updatedns-osx'
alias fixaudio='killall coreaudio' # Needs 'sudo'
alias fixpermissions='chown -R `whoami`:admin /usr/local' # Needs 'sudo'
alias rake='noglob rake' # Octopress, prevents 'zsh: no matches found' error

# keyboard shortcuts
bindkey '^[^[[C' forward-word		# [Opt-RightArrow] - move forward one word
bindkey '^[^[[D' backward-word		# [Opt-LeftArrow] - move forward one word
bindkey '^[[1;3C' forward-word		# [Opt-RightArrow] - move forward one word # tmux zsh iterm reads Opt+Arrow differently
bindkey '^[[1;3D' backward-word		# [Opt-LeftArrow] - move backward one word # tmux zsh iterm reads Opt+Arrow differently

# Database tools, https://redfin.atlassian.net/wiki/display/EN/Database+Tools
alias sfperf='psql -U postgres -h sfperf-query-1.redfintest.com stingray_sfperf'
alias sftrunk='psql -U postgres -h sftrunk-query-1.redfintest.com stingray_sftrunk'
alias newschema='psql -U postgres -h ns-query-1.redfintest.com stingray_new_schema'
alias release='psql -U postgres -h release-query-1.redfintest.com stingray_release'
alias trunk='psql -U postgres -h trunk-query-1.redfintest.com stingray_trunk'

export VISUAL='vim'
export EDITOR='subl'
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/nicholas.lau/.bin"
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

# Too Many Open Files, redfin solution to problem:
# https://docs.google.com/document/d/1L2aqVuRfqpZB4gAqLpvs_jARPFkIN1LsnOKZEylybNg/edit
ulimit -n 16000

# Fixes 'mvn -v' to point to correct JDK version
# http://stackoverflow.com/questions/18813828/why-maven-use-jdk-1-6-but-my-java-version-is-1-7
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8.0_211)

# Source Shell Functions, Redfin Dev Setup
eval "$($HOME/fin/bin/fin init -)"
export REDFIN_MAIN=$HOME/code/main
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
export NVM_DIR="/Users/nicholas.lau/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Redfin Corvair Build Recipes, https://redfin.atlassian.net/wiki/display/BUILD/Corvair+Build+Recipes
export CORVAIR_CONFIG="$HOME/.corvair-config.json"

PATH="/Users/nicholas.lau/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/nicholas.lau/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/nicholas.lau/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/nicholas.lau/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/nicholas.lau/perl5"; export PERL_MM_OPT;

export MAVEN_OPTS="-Xmx2g -Xms256m -XX:MaxPermSize=700m -XX:ReservedCodeCacheSize=128m -XX:-MaxFDLimit"

# Load rbenv automatically by appending
# the following to ~/.zshrc:
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/code/scripts:$PATH"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.config/oh-my-zsh/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="dracula"

# bat

export BAT_THEME="Dracula"

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
plugins=(brew git exa-zsh)

source $ZSH/oh-my-zsh.sh

# User configuration

## history

export HISTFILE=$ZDOTDIR/.zsh_history
# ヒストリに保存するコマンド
export HISTSIZE=100000
# ヒストリに保存するコマンドの最大数
export HISTFILESIZE=200000
# 入力が最後のヒストリと一致する場合は記録しない
export HISTCONTROL=ignoredups
# 以下のコマンドは記録しない(?や* も使える)
#export HISTIGNORE=pwd:ls:la:ll:lla:exit:history*
export HISTIGNORE=pwd:ls:la:ll:lla:exit:open

# export MANPATH="/usr/local/man:$MANPATH"

setopt hist_expire_dups_first # 履歴を切り詰める際に、重複する最も古いイベントから消す
setopt hist_save_no_dups      # 履歴ファイルに書き出す際、新しいコマンドと重複する古いコマンドは切り捨てる
setopt HIST_IGNORE_DUPS # 前と重複する行は記録しない
setopt HIST_IGNORE_ALL_DUPS # 履歴中の重複行をファイル記録前に無くす
setopt HIST_IGNORE_SPACE # 行頭がスペースのコマンドは記録しない
setopt HIST_NO_STORE # histroyコマンドは記録しない
setopt nonomatch

# fzf

[ -f ~/.config/fzf/.fzf.zsh ] && source ~/.config/fzf/.fzf.zsh
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"

# zoxide

eval "$(zoxide init zsh)"

# github cli

eval "$(gh completion -s zsh)"

# rbenv

export RBENV_ROOT=$HOME/.config/rbenv/.rbenv
export PATH=$RBENV_ROOT/bin:$PATH
eval "$(rbenv init -)"

# rye

source "$HOME/.rye/env"

# postgresql

export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# node

export NODENV_ROOT=$HOME/.config/nodenv/.nodenv
eval "$(nodenv init -)"


# mojo

# export MOJO_PYTHON_LIBRARY=$HOME/.rye/shims/python
# export MODULAR_HOME=$HOME/.config/modular/.modular
# export PATH=$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH

# cargo

# export PATH=$HOME/.cargo/bin:$PATH

# java

# export JAVA_HOME=`/usr/libexec/java_home -v 8`

# Android Studio

# export ANDROID_HOME=$HOME/Library/Android/sdk
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/tools/bin
# export PATH=$PATH:$ANDROID_HOME/platform-tools

# vs code

# export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


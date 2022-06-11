
ulimit -Sn 10240

#node nvm
#ruby rbenv
# Migration procedure
# mkdir ~/.zsh
# cd ~/.zsh
# git clone git://github.com/zsh-users/zsh-completions.git

# https://qiita.com/budougumi0617/items/d9405bfb9df2d5672a88
echo # ------------------------------------------------------------------------ >> ~/.zshrc
echo # zsh-completions >> ~/.zshrc
echo # ------------------------------------------------------------------------>> foo.txt
# echo 'if [ -d ${HOME}/.zsh/zsh-completions/src ] ; then' >> ~/.zshrc
# echo '   fpath=(${HOME}/.zsh/zsh-completions/src $fpath)' >> ~/.zshrc
# echo '   compinit' >> ~/.zshrc
# echo fi >> ~/.zshrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias so="source ~/.zshrc"
alias relogin='exec $SHELL -l'
alias vz='vim ~/.zshrc'
alias open_zshrc='open ~/.zshrc'
alias be="bundle exec"
alias dr="docker-compose exec web bundle exec"

# git設定
# https://qiita.com/umasoya/items/f3bd6cffd418f3830b75

autoload -Uz compinit && compinit
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{blue}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
PROMPT='%n@%m %c'\$vcs_info_msg_0_' $ '
precmd(){ vcs_info }
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 補完候補を詰めて表示
setopt list_packed

# 補完候補一覧をカラー表示
autoload colors
zstyle ':completion:*' list-colors ''

# コマンドのスペルを訂正
setopt correct

export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH="/usr/local/opt/qt@5/bin:$PATH"
export PATH="/opt/local/libexec/qt5/bin:$PATH"
export PATH="/usr/local/opt/openssl@3/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/imagemagick@6/lib/pkgconfig:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion




if [ -d ${HOME}/.zsh/zsh-completions/src ] ; then
   fpath=(${HOME}/.zsh/zsh-completions/src $fpath)
   compinit
fi


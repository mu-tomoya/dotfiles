export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"
eval "$(rbenv init -)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PGDATA=/usr/local/var/postgres

export PATH="$PATH:$HOME/.composer/vendor/bin"

export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH


### Added by Zplugin's installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk
zplugin light zdharma/fast-syntax-highlighting
zplugin light zsh-users/zsh-autosuggestions
# Plugin history-search-multi-word loaded with tracking.
zplugin load zdharma/history-search-multi-word
zplugin ice atclone"dircolors -b LS_COLORS > c.zsh" atpull'%atclone' pick"c.zsh" nocompile'!'
zplugin light trapd00r/LS_COLORS
zplugin ice as"program" make'!' atclone'./direnv hook zsh > zhook.zsh' atpull'%atclone' src"zhook.zsh"
zplugin light direnv/direnv
zplugin light dracula/zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

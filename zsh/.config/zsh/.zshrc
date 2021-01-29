if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
  fi


export PATH="/bin/bash:$PATH"
export PATH="/usr/local/bin/python3.9:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

RUBYPATH="/usr/local/opt/ruby/bin"

# aliases
alias pip=pip3.9
alias python=python3.9

# options
HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$HOME/.history/.zsh_history"
setopt auto_cd
setopt auto_list
setopt auto_menu
setopt always_to_end
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt inc_append_history
setopt share_history
setopt correct_all
setopt interactive_comments
bindkey -v

# styles
zstyle ':completion:*' menu select
zstyle ':completion:*' group-name ''
zstyle ':completion:::::' completer _expand _complete _ignored _approximate
zstyle ':fuzzy-search-and-edit:editor' use-visual yes

test -e $HOME/.iterm2_shell_integration.zsh && source $HOME/.iterm2_shell_integration.zsh || true

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# antigen
source /usr/local/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle z
antigen bundle osx
antigen bundle git
antigen bundle colored-man-pages
antigen bundle vi-mode

antigen bundle zsh-users/zsh-completions

antigen theme agnoster

antigen apply


# set completions
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
  fi

TMUX_CONFIG='~/.config/tmux/.tmux.conf'
alias tn='tmux -u -f $TMUX_CONFIG new'
alias ta='tmux -u -f $TMUX_CONFIG attach'
alias tt='nvim ~/.config/tmux/.tmux.conf'

PYTHONPATH=/usr/local/opt/python@3.9/libexec/bin
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias pipl='python3 -m pip list'
alias pipins='python3 -m pip install '
alias pipuns='python3 -m pip uninstall '

# options
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

# antigen
source /usr/local/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle colored-man-pages
antigen bundle z

antigen theme agnoster

antigen apply

# other settings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

. /usr/local/etc/profile.d/z.sh

# test -e /Users/graham/.config/zsh/.iterm2_shell_integration.zsh && source /Users/graham/.config/zsh/.iterm2_shell_integration.zsh || true

# export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/ncurses/bin:$PATH"


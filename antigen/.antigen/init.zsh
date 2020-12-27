#-- START ZCACHE GENERATED FILE
#-- GENERATED: Sun 27 Dec 2020 18:08:23 AEDT
#-- ANTIGEN v2.2.3
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/z /Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx /Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/colored-man-pages /Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/vi-mode /Users/graham/mydotfiles/antigen/.antigen/bundles/zsh-users/zsh-completions) path+=(/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/z /Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx /Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/colored-man-pages /Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/vi-mode /Users/graham/mydotfiles/antigen/.antigen/bundles/zsh-users/zsh-completions)
_antigen_compinit () {
  autoload -Uz compinit; compinit -i -d "/Users/graham/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh" ]]; then
  ZSH="/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh"; ZSH_CACHE_DIR="/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/z/z.plugin.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx/osx.plugin.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/colored-man-pages/colored-man-pages.plugin.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/vi-mode/vi-mode.plugin.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/zsh-users/zsh-completions/zsh-completions.plugin.zsh';
source '/Users/graham/mydotfiles/antigen/.antigen/bundles/robbyrussell/oh-my-zsh/themes/agnoster.zsh-theme.antigen-compat';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/z plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/osx plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/colored-man-pages plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/vi-mode plugin true' 'https://github.com/zsh-users/zsh-completions.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git themes/agnoster.zsh-theme theme true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/z' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/z/z.plugin.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx/osx.plugin.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/colored-man-pages' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/colored-man-pages/colored-man-pages.plugin.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/vi-mode' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/vi-mode/vi-mode.plugin.zsh' '/Users/graham/.antigen/bundles/zsh-users/zsh-completions//' '/Users/graham/.antigen/bundles/zsh-users/zsh-completions///zsh-completions.plugin.zsh' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/themes/agnoster.zsh-theme' '/Users/graham/.antigen/bundles/robbyrussell/oh-my-zsh/themes/agnoster.zsh-theme')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.3'

#-- END ZCACHE GENERATED FILE

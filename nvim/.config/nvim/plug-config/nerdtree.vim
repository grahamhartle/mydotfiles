" NERDTree config

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

let g:NERDTreeGitStatusUseNerdFonts = 1

let g:NERDTreeGitStatusShowIgnored = 1

let g:NERDTreeGitStatusUntrackedFilesMode = 'all'

let g:NERDTreeGitStatusGitBinPath = '/usr/bin/git'

let g:NERDTreeGitStatusShowClean = 1

let g:NERDTreeGitStatusConcealBrackets = 1

nmap <C-n> :NERDTreeToggle<cr>


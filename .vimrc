filetype plugin indent on
syntax on

let $BASH_ENV = "~/.aliasrc"

set nocompatible

" Appearance
set termguicolors
set title
set laststatus=1
set statusline=
set statusline+=%<%f\ %h%w%m%r%=
set statusline+=\ %{&ff}
set statusline+=\ %{&fileencoding}
set statusline+=%10.(%l:%c%V%)
set statusline+=\ %P

" Utils
set ruler
set showcmd
set wildmenu

" Line numbers
set number relativenumber
set numberwidth=4

" Tabs and indentation
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch

" Scroll off
set scrolloff=4
set sidescrolloff=8

" Line wrap
set nowrap
set breakindent
set formatoptions=l
set lbr

" Key code timeout and tty speed
set ttimeout
set ttimeoutlen=100
set ttyfast

" Disable swap files and backups
set noswapfile
set nobackup
set nowritebackup

" Spellcheck
set nospell
set spelllang=en_us

" Spellcheck undercurls
hi clear SpellBad
hi clear SpellCap
hi SpellBad cterm=undercurl ctermfg=NONE guifg=NONE gui=undercurl guisp=red
hi SpellCap cterm=undercurl ctermfg=None guifg=NONE gui=undercurl guisp=blue

" vnoremap p "_dP

" Clear trailing white space on write
autocmd BufWritePre * %s/\s\+$//e

" Styled and colored underline support
let &t_AU = "\e[58:5:%dm"
let &t_8u = "\e[58:2:%lu:%lu:%lum"
let &t_Us = "\e[4:2m"
let &t_Cs = "\e[4:3m"
let &t_ds = "\e[4:4m"
let &t_Ds = "\e[4:5m"
let &t_Ce = "\e[4:0m"

" Strikethrough
let &t_Ts = "\e[9m"
let &t_Te = "\e[29m"

" Truecolor support
let &t_8f = "\e[38:2:%lu:%lu:%lum"
let &t_8b = "\e[48:2:%lu:%lu:%lum"
let &t_RF = "\e]10;?\e\\"
let &t_RB = "\e]11;?\e\\"

" Bracketed paste
let &t_BE = "\e[?2004h"
let &t_BD = "\e[?2004l"
let &t_PS = "\e[200~"
let &t_PE = "\e[201~"

" Cursor control
let &t_RC = "\e[?12$p"
let &t_SH = "\e[%d q"
let &t_RS = "\eP$q q\e\\"
let &t_SI = "\e[5 q"
let &t_SR = "\e[3 q"
let &t_EI = "\e[1 q"
let &t_VS = "\e[?12l"

" Focus tracking
let &t_fe = "\e[?1004h"
let &t_fd = "\e[?1004l"
execute "set <FocusGained>=\<Esc>[I"
execute "set <FocusLost>=\<Esc>[O"

" Window title
let &t_ST = "\e[22;2t"
let &t_RT = "\e[23;2t"

let &t_ut=""


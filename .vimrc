" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" The following plus `set nocompatible` needed for matchit
filetype plugin on
runtime macros/matchit.vim

set expandtab
set shiftwidth=4
set tabstop=4
set foldmethod=marker
set nojoinspaces
set number

set si "smart indent
set ic "ignore case

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"if has("vms")
  set nobackup      " do not keep a backup file, use versions instead
"else
  "set backup       " keep a backup file
"endif
set history=500     " keep 50 lines of command line history
set ruler           " show the cursor position all the time
set showcmd         " display incomplete commands
set incsearch       " do incremental searching
set nowrap          " don't wrap by default
set linebreak       " wrap at end of words
set nolist          " linebreak won't work if list is enabled

" set runtimepath=$VIMRUNTIME,/Applications/MacVim-7_2-stable-1_2/ns9tks-vim-fuzzyfinder-tip,/Applications/MacVim-7_2-stable-1_2/ns9tks-vim-l9-tip

set guifont=Monaco:h18

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

source $VIMRUNTIME/macros/matchit.vim

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp

"ç to re-do on all next lines
"map ç j.ç

"ñ to re-do on all next matches
"map ñ n.ñ

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=60 columns=80
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Highlight tab chars
autocmd WinEnter,VimEnter *
\   if &expandtab |
\       silent! call matchadd('Error', '\t', 10, 31337) |
\   else |
\       silent! call matchdelete(31337) |
\   endif

" Vim color file
" Maintainer:   Hans Fugal <hans@fugal.net>
" Last Change:  $Date: 2003/05/06 16:37:49 $
" URL:      http://hans.fugal.net/vim/colors/desert.vim

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
    syntax reset
    endif
endif
let g:colors_name="desert"

hi Normal   guifg=White guibg=grey20

" highlight groups
hi Cursor   guibg=khaki guifg=slategrey
"hi CursorIM
"hi Directory
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi ErrorMsg
hi VertSplit    guibg=#c2bfa5 guifg=grey50 gui=none
hi Folded   guibg=grey30 guifg=gold
hi FoldColumn   guibg=grey30 guifg=tan
hi IncSearch    guifg=slategrey guibg=khaki
"hi LineNr
hi ModeMsg  guifg=goldenrod
hi MoreMsg  guifg=SeaGreen
hi NonText  guifg=LightBlue guibg=grey30
hi Question guifg=springgreen
hi Search   guibg=peru guifg=wheat
hi SpecialKey   guifg=yellowgreen
hi StatusLine   guibg=#c2bfa5 guifg=black gui=none
hi StatusLineNC guibg=#c2bfa5 guifg=grey50 gui=none
hi Title    guifg=indianred
hi Visual   gui=none guifg=khaki guibg=olivedrab
"hi VisualNOS
hi WarningMsg   guifg=salmon
"hi WildMenu
"hi Menu
"hi Scrollbar
"hi Tooltip

" syntax highlighting groups
hi Comment   guifg=SkyBlue
hi Constant  guifg=#ffa0a0
hi Identifier    guifg=palegreen
hi Statement     guifg=khaki
hi PreProc   guifg=indianred
hi Type      guifg=darkkhaki
hi Special   guifg=navajowhite
"hi Underlined
hi Ignore    guifg=grey40
"hi Error
hi Todo      guifg=orangered guibg=yellow2

" color terminal definitions
hi SpecialKey    ctermfg=darkgreen
hi NonText   cterm=bold ctermfg=darkblue
hi Directory     ctermfg=darkcyan
hi ErrorMsg  cterm=bold ctermfg=7 ctermbg=1
hi IncSearch     cterm=NONE ctermfg=yellow ctermbg=green
hi Search    cterm=NONE ctermfg=grey ctermbg=blue
hi MoreMsg   ctermfg=darkgreen
hi ModeMsg   cterm=NONE ctermfg=brown
hi LineNr    ctermfg=3
hi Question  ctermfg=green
hi StatusLine    cterm=bold,reverse
hi StatusLineNC  cterm=reverse
hi VertSplit     cterm=reverse
hi Title     ctermfg=5
hi Visual    cterm=reverse
hi VisualNOS     cterm=bold,underline
hi WarningMsg    ctermfg=1
hi WildMenu  ctermfg=0 ctermbg=3
hi Folded    ctermfg=darkgrey ctermbg=NONE
hi FoldColumn    ctermfg=darkgrey ctermbg=NONE
hi DiffAdd   ctermbg=4
hi DiffChange    ctermbg=5
hi DiffDelete    cterm=bold ctermfg=4 ctermbg=6
hi DiffText  cterm=bold ctermbg=1
hi Comment   ctermfg=darkcyan
hi Constant  ctermfg=brown
hi Special   ctermfg=5
hi Identifier    ctermfg=6
hi Statement     ctermfg=3
hi PreProc   ctermfg=5
hi Type      ctermfg=2
hi Underlined    cterm=underline ctermfg=5
hi Ignore    cterm=bold ctermfg=7
hi Error     cterm=bold ctermfg=7 ctermbg=1

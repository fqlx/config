execute pathogen#infect()

:set tags=~/mytags

" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

" remove all trailing whitesapce before saving
autocmd BufWritePre * %s/\s\+$//e


:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

set ruler

" Disable arrows
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

syntax on

set number relativenumber
set backspace=indent,eol,start

" Typescript config
"let g:typescript_compiler_binary = 'tsc'
"let g:typescript_compiler_options = ''
"autocmd QuickFixCmdPost [^l]* nested cwindow
"autocmd QuickFixCmdPost    l* nested lwindow
"
"autocmd FileType typescript JsPreTmpl html
"autocmd FileType typescript syn clear foldBraces

let g:syntastic_typescript_checkers = ['tslint']
"set tslintpath = system("git rev-parse --show-toplevel |tr -d '\n'")."/tslint.json"

set expandtab
set shiftwidth=2
set tabstop=2

set clipboard=unnamed

call plug#begin('~/.vim/plugged')

"tsx
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" set filetypes as typescript.jsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.jsx

" light blues
hi xmlTagName guifg=#59ACE5
hi xmlTag guifg=#59ACE5

" dark blues
hi xmlEndTag guifg=#2974a1

set autoindent

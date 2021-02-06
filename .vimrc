set nocompatible              " be iMproved, required
filetype off                  " required
    
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" scrollbar
"Plugin 'xuyuanp/scrollbar.nvim'

" Plugin manager
Plugin 'VundleVim/Vundle.vim'

" Highlighting
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'



" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'grvcoelho/vim-javascript-snippets'
Plugin 'mattn/emmet-vim'


" Bracket color
Plugin 'luochen1990/rainbow'

" Gruvbox
Plugin 'morhetz/gruvbox' 

" vim current word
Plugin 'dominikduda/vim_current_word'


" auto-pairs
Plugin 'jiangmiao/auto-pairs'

" Lint:
Plugin 'w0rp/ale'






" Autocomplete
" Plugin 'Valloric/YouCompleteMe'

" COC autocomplete
Plugin 'neoclide/coc.nvim', {'branch': 'release'}


" File explorer:
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'



" System clipboard: 
Plugin 'christoomey/vim-system-copy'

" Find file by text:
Plugin 'dyng/ctrlsf.vim'

" Find file by name:
set rtp+=~/.fzf
Plugin 'junegunn/fzf.vim'

" Vim airline
Plugin 'vim-airline/vim-airline'


call vundle#end()

" move in insert mode




" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"vim current word
" Twins of word under cursor:
let g:vim_current_word#highlight_twins = 1
" The word under cursor:
let g:vim_current_word#highlight_current_word = 1

" Bracket color
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" temas
" colorscheme gruvbox
" let g:gruvbox_contrast_dark = 'hard'

" NERDTress
let NERDTreeQuitOnOpen=1

" Vim configuration:
" Indentation
filetype plugin indent on

set expandtab


set title                   " Show the filename in the window title bar.

set scrolloff=5             " Start scrolling n lines before horizontal
                            "   border of window.
set sidescrolloff=7         " Start scrolling n chars before end of screen.
set sidescroll=1            " The minimal number of columns to scroll
                            "   horizontally.


" Line numbers:
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set sw=4
set relativenumber
set laststatus=2
set noshowmode


" No wrap:
set nowrap


" Plugins configuration:
" Snippets:
imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

" Lint:
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'




" Code formatter:
let b:ale_fixers = ['eslint']
let g:ale_fix_on_save = 1

" Snipet

let g:snipMate = { 'snippet_version' :1}



" File explorer:
" NERDTress Ctrl+n
map <C-n> :NERDTreeToggle<CR>
" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" ctrlsf (find file by text)
" O - always leave CtrlSF window opening.
" <C-O> - open file in a horizontal split window.
" <C-J> - Move cursor to next match.
" <C-K> - Move cursor to previous match.
nmap     <C-F> <Plug>CtrlSFPrompt
vmap     <C-F> <Plug>CtrlSFVwordPath


" vim.fzf (find file by filename)
map <C-b> :Files<CR>


let mapleader=" "
"Reescribir atajos de entrada y salida
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>


" Autorefresh NERDTress
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

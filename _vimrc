set number
set mouse=a
set cursorline
set numberwidth=1
syntax enable
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=4
set relativenumber
set laststatus=2
set noshowmode
set splitright


" Install Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"-----------------------------------------

call plug#begin('~/.vim/plugged')

" Theme
Plug 'morhetz/gruvbox'
Plug 'jacoborus/tender.vim'


" IDE
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release' }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'skammer/vim-css-color'
Plug 'chrisbra/NrrwRgn'
" :NR open new single space to code
Plug 'terryma/vim-multiple-cursors'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Graphql pluggin
Plug 'jparise/vim-graphql'



call plug#end()


let g:coc_global_extensions = [ 'coc-tsserver' ]

colorscheme tender
if (has("termguicolors"))
 set termguicolors
endif
let NERDTreeQuitOnOpen=1

let mapleader=" "


set runtimepath^=~/.vim/plugged/bundle/ctrlp.vim

let g:user_emmet_leader_key=','
let g:cssColorVimDoNotMessMyUpdatetime = 1

let g:nodejs_complete_config = {
\  'js_compl_fn': 'jscomplete#CompleteJS',
\  'max_node_compl_len': 15
\}



nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>xs :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>
nmap <Leader>f :CtrlP ./<CR>
nmap <Leader>1 :vertical resize +5<CR>
nmap <Leader>2 :vertical resize -5<CR>
nmap <Leader>3 :resize +5<CR>
nmap <Leader>4 :resize -5<CR>
nmap <Leader>r :tabnew<CR>
nmap <Leader>br :tabclose<CR>
nmap <Leader>re gT
nmap <Leader>rt gt
nmap <Leader>v :sp<CR>
nmap <Leader>h :vs<CR>
nmap <Leader>t :vert :term<CR>
nmap <Leader>k :NR<CR>
nmap <leader>0 <Plug>(coc-format-selected)
nmap <leader>0 <Plug>(coc-format-selected)

nmap <Leader>p :CocCommand prettier.formatFile<CR>
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()


inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap clg console.log()<left>
inoremap reqp   = require('')<left>
inoremap imr  import React from 'react'<left>

inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

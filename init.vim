call plug#begin('~/.vim/plugged')

" Smooth scrolling
Plug 'yuttie/comfortable-motion.vim'
Plug 'ntpeters/vim-better-whitespace'
" Clear highlight search automatically for you
" Show current search term in different color
"Plug 'PeterRincker/vim-searchlight'
"Plug 'preservim/nerdtree'
" gruvbox colorscheme. Seems to work the best for me.
Plug 'morhetz/gruvbox'
"Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'christoomey/vim-tmux-navigator'
"Plug 'preservim/vimux'
Plug 'easymotion/vim-easymotion'
"Plug 'haya14busa/incsearch.vim'
"Plug 'haya14busa/incsearch-easymotion.vim'
call plug#end()

colorscheme gruvbox
set shiftwidth=3
set tabstop=3
set textwidth=80
set shiftwidth=3
set colorcolumn=81

set number relativenumber
"set shell=/usr/bin/zsh
let mapleader = "\<Space>"
nnoremap <leader><leader>w : StripWhitespaceOnChangedLines <CR>
nnoremap <leader><leader>s : StripWhitespace <CR>
 if has("cscope")
			 set csto=0
			 set cst
			 set nocsverb
			 " add any database in current directory
			 if filereadable("cscope.out")
				  cs add cscope.out
			 " else add database pointed to by environment
			 elseif $CSCOPE_DB != ""
				  cs add $CSCOPE_DB
			 endif
			 set csverb
  endif

  set splitright
  set splitbelow

let g:EasyMotion_do_mapping=1
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap <Leader>s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

"function! s:incsearch_config(...) abort
"	return incsearch#util#deepextend(deepcopy({
"				\   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
"				\   'keymap': {
"				\     "\<CR>": '<Over>(easymotion)'
"				\   },
"				\   'is_expr': 0
"				\ }), get(a:, 1, {}))
"endfunction

""#noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
"#noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
"#noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))


" deal with colors
if !has('gui_running')
  set t_Co=256
endif
if (match($TERM, "-256color") != -1) && (match($TERM, "screen-256color") == -1)
  " screen does not (yet) support truecolor
  set termguicolors
endif
"navigation change
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" vv to generate new vertical split
nnoremap map <silent> vv <c-w>v</c-w></silent>
" Prompt for a command to run
map <leader>vp :VimuxPromptCommand<cr>
set bg=dark
colorscheme gruvbox
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif
set termguicolors
set cscopetag

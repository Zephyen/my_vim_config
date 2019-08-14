set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" 
Plugin 'Chiel92/vim-autoformat'
" 文件目录分屏
Bundle 'scrooloose/nerdtree'
" 文件函数/类名提取分屏
Bundle 'majutsushi/tagbar'
" 函数快速检索（前端开发可以不配置）
Plugin 'tacahiroy/ctrlp-funky'
Bundle 'ervandew/supertab'

" js 全家桶
Plugin 'isRuslan/vim-es6'
	
Plugin 'posva/vim-vue'

Plugin 'pangloss/vim-javascript'
" 语法检测
Plugin 'scrooloose/syntastic'
" html emmet
Plugin 'mattn/emmet-vim'
" 代码折叠
Plugin 'tmhedberg/SimpylFold'
" 自动补全(vim难装插件之一)
Plugin 'ycm-core/YouCompleteMe'
" vim底层命令行git美化
Plugin 'powerline/powerline'
" ack命令在vim中的快速检索
Plugin 'mileszs/ack.vim'
Plugin 'jiangmiao/auto-pairs'

" 彩虹括号
Plugin 'kien/rainbow_parentheses.vim'
" 主题
Plugin 'dracula/vim'  
" 代码注释
Plugin 'scrooloose/nerdcommenter'
" 键位显示
" Plugin 'liuchengxu/vim-which-key'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-airline/vim-airline'
"搜索快乐就完事了
Plugin 'Lokaltog/vim-easymotion'
Plugin 'shawncplus/phpcomplete.vim'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" welcome page 
Plugin 'mhinz/vim-startify'

" DrawIt 
Plugin 'DrawIt'

call vundle#end()            " required
filetype plugin indent on    

" 主题
syntax enable
colorscheme dracula

" How can I open a NERDTree automatically when vim starts up?
" autocmd vimenter * NERDTree
" Stick this in your vimrc to open NERDTree with Ctrl+n (you can set whatever key you want):
map <C-n> :NERDTreeToggle<CR>

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END
map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>

" md 
let g:vim_markdown_folding_disabled = 1

"Put something like the following into your ~/.vimrc:
nmap <F8> :TagbarToggle<CR>

" ctrlp 
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*/target/*,*/node_modules/*     " MacOSX/Linux

" snippet
let g:UltiSnipsExpandTrigger="<c-e>"


" keymap 
let mapleader = " "
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" inoremap jj <esc> 
" inoremap <esc> <nop>
inoremap jk <Esc>
inoremap <Esc> <NOP>
" iabbrev 缩写
iabbrev 305 305737657@qq.com 
iabbrev a305 a305737657 
" setting arrow 
"inoremap hh <LEFT>
"inoremap ll <RIGHT>
"inoremap jj <UP>
"inoremap kk <DOWN>

" base Config
set relativenumber "display line number 
set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set paste
" 
set guifont=Monaco:h13
set ic
set smarttab

set encoding=UTF-8

set modifiable

set clipboard=unnamed

"启用语法高亮
syntax enable 

"关闭兼容模式
set nocompatible

"打开文件类型检测，使用智能补全
filetype plugin indent on

"set colorscheme
let g:gruvbox_termcolors=256
"启用truecolor rendering
"set termguicolors
if !has('gui_running')
  set t_Co=256
endif
set background=dark
colorscheme gruvbox

"allow bold
let g:enable_bold_font=1

"allow italic
let g:enable_italic_font=1

" Set guifont
set guifont=UbuntuMono\ Nerd\ Font\ Mono\ 10


set termencoding=utf-8
set encoding=utf-8

"set number of lines of history remembered
set history=500

"show line number
set number

"在状态栏显示当前光标位置位于(哪一行那一列)
set ruler

"命令模式下，底部操作指令按下 Tab 键自动补全。
"第一次按下 Tab，会显示所有匹配的操作指令的清单；
"第二次按下 Tab，会依次选择各个指令。
set wildmenu

"总是显示标签栏
set showtabline=2

"打开文件监视。如果在编辑过程中文件发生外部改变，就会发出提示。
set autoread
au FocusGained,BufEnter \* checktime

"底部命令行高度
set cmdheight=1

autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

"命令模式下，在底部显示，当前键入的指令。
set showcmd

"高亮显示匹配结果
set hlsearch

"同时高亮所有匹配值
set incsearch

"循环搜索
set wrapscan

"set lazyredraw

"set magic

"将 tab 键转为空格
set expandtab

"按下 tab 键时，vim 显示的空格数
set tabstop=4

"自动锁进时的空白长度
set shiftwidth=4

"smart tab
set smarttab

"自动折行
set wrap

" 重新打开文件时，回到最后的编辑位置。
au BufReadPost \* if line("'\"") > 1 && line("'\"") <= line("\$") | exe "normal! g'\"" | endif


" 移除状态线下方的模式通知，因为使用了lightline
set noshowmode

let g:lightline = { 'colorscheme': 'tender' }

" 删除某些文件类型的保存时的尾部空白。
fun! CleanExtraSpaces()
let save_cursor = getpos(".")
let old_query = getreg("/")
silent! %s/\s\+\$//e
call setpos('.', save_cursor)
call setreg('/', old_query)
endfun

if has("autocmd")
autocmd BufWritePre _.md,_.txt,_.js,_.py,_.wiki,_.sh,_.coffee,\*.vimrc :call CleanExtraSpaces()
endif


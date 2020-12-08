set encoding=utf-8                                  " text encoding
set modifiable
set clipboard+=unnamedplus                          " use system clipboard by default
syntax enable                                       " 启用语法高亮
set nocompatible                                    " 关闭兼容模式
filetype plugin indent on                           " 打开文件类型检测，使用智能补全
set termguicolors                                   " Opaque Background
set tabstop=4 softtabstop=4 shiftwidth=4 autoindent " tab width
set expandtab smarttab                              " tab key actions
set background=dark
set grepprg=rg\ --vimgrep                           " use rg as default grepper
set showtabline=2                                   " always show tabline
set foldlevel=0                                     " open all folds by default
set inccommand=nosplit                              " visual feedback while substituting
set noshowmode                                      " dont show current mode below statusline
set noshowcmd                                       " to get rid of display of last command
set conceallevel=2                                  " set this so we wont break indentation plugin
set splitright                                      " open vertical split to the right
set splitbelow                                      " open horizontal split to the bottom
set tw=90                                           " auto wrap lines that are longer than that
set emoji                                           " enable emojis
set history=1000                                    " history limit
set backspace=indent,eol,start                      " sensible backspacing
set undofile                                        " enable persistent undo
set undodir=/tmp                                    " undo temp file directory
set relativenumber                                  " current line is 0
set title                                           " tab title as file name
set cursorline                                      " 高亮光标所在行
set guifont=UbuntuMono\ Nerd\ Font\ Mono\ 10        " Set guifont
set termencoding=utf-8
set number
set ruler                                           " 在状态栏显示当前光标位置位于(哪一行那一列)
set incsearch ignorecase smartcase hlsearch         " highlight text while searching
set list listchars=trail:»,tab:»-                   " use tab to navigate in list mode
set fillchars+=vert:\▏                              " requires a patched nerd font (try FiraCode)
set wrapscan                                        " 循环搜索
set expandtab                                       " 将 tab 键转为空格
set tabstop=4                                       " 按下 tab 键时，vim 显示的空格数
set shiftwidth=4                                    " 自动锁进时的空白长度
set smarttab                                        " smart tab
set wrap breakindent                                " wrap long lines to the width set by tw
set showtabline=2                                   " 总是显示标签栏
set autoread                                        " 打开文件监视。如果在编辑过程中文件发生外部改变，就会发出提示。
au FocusGained,BufEnter \* checktime
set cmdheight=1                                     " 底部命令行高度
set showcmd                                         " 命令模式下，在底部显示，当前键入的指令。

"命令模式下，底部操作指令按下 Tab 键自动补全。
"第一次按下 Tab，会显示所有匹配的操作指令的清单；
"第二次按下 Tab，会依次选择各个指令。
set wildmenu

" performance tweaks
set nocursorcolumn
set scrolljump=5
set lazyredraw
set redrawtime=10000
set synmaxcol=180
set re=1

" required by coc
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set shortmess+=c
set signcolumn=yes

" Themeing
let g:gruvbox_termcolors=256                   " set colorscheme
colorscheme gruvbox
hi Pmenu guibg='#00010a' guifg=white           " popup menu colors
hi Comment gui=italic cterm=italic             " italic comments
hi Search guibg=#b16286 guifg=#ebdbb2 gui=NONE " search string highlight color
hi NonText guifg=bg                            " mask ~ on empty lines
hi clear CursorLineNr                          " use the theme color for relative number
hi CursorLineNr gui=bold                       " make relative number bold
hi SpellBad guifg=NONE gui=bold,undercurl      " misspelled words

" colors for git (especially the gutter)
hi DiffAdd  guibg=#0f111a guifg=#43a047
hi DiffChange guibg=#0f111a guifg=#fdd835
hi DiffRemoved guibg=#0f111a guifg=#e53935

" coc multi cursor highlight color
hi CocCursorRange guibg=#b16286 guifg=#ebdbb2

let g:enable_bold_font=1                     " allow bold
let g:enable_italic_font=1                   " allow italic

"用浅色高亮显示当前行"
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

" 重新打开文件时，回到最后的编辑位置。
au BufReadPost \* if line("'\"") > 1 && line("'\"") <= line("\$") | exe "normal! g'\"" | endif

" 保存文件时自动删除文件中多余的空格
if has("autocmd")
autocmd BufWritePre _.md,_.txt,_.js,_.py,_.wiki,_.sh,_.coffee,\*.vimrc :call CleanExtraSpaces()
endif

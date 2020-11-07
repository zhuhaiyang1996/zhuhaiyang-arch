call plug#begin('~/.config/Dotfile/nvim-plug/plugged')
Plug 'neoclide/coc.nvim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf.vim'

"文件管理器
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'

"打开终端
Plug 'skywind3000/vim-terminal-help'
Plug 'voldikss/vim-floaterm'

"use Ranger in a floating window
Plug 'kevinhwang91/rnvimr'

"markdown
Plug 'godlygeek/tabular' "必要插件，安装在vim-markdown前面
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'
Plug 'reedes/vim-pencil'
Plug 'Konfekt/FastFold'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
"markdown


"Adds filetype glyphs (icons) to various vim plugins.
Plug 'ryanoasis/vim-devicons'

"This plugin provides a start screen for Vim and Neovim.
Plug 'mhinz/vim-startify'

"statusline 状态栏

"Plug 'powerline/powerline'
Plug 'itchyny/lightline.vim'

"A 24bit colorscheme for Vim, Airline and Lightline
"可以作为 colorscheme 使用
Plug 'jacoborus/tender.vim'

"Highlights the pair surrounding the current cursor position
Plug 'Yggdroot/hiPairs'

"vim-indentLine 缩进线
Plug 'Yggdroot/indentLine'

"Underlines the word under the cursor
Plug 'itchyny/vim-cursorword'

"A plugin to color colornames and codes
Plug 'chrisbra/Colorizer'

Plug 'mg979/vim-visual-multi'

"yank历史纪录
Plug 'svermeulen/vim-yoink'

"vim-which-key is vim port of emacs-which-key that displays available keybindings in popup.
Plug 'liuchengxu/vim-which-key'

"Open URI with your favorite browser from your most favorite editor
Plug 'tyru/open-browser.vim'

"A simple, easy-to-use Vim alignment plugin
Plug 'junegunn/vim-easy-align'

"A calendar application for Vim
Plug 'itchyny/calendar.vim'

"后台运行 shell 命令，并将结果实时显示到 Vim 的 Quickfix 窗口中
Plug 'skywind3000/asyncrun.vim'

"快速注释插件
Plug 'preservim/nerdcommenter'

"快速跳转
Plug 'easymotion/vim-easymotion'

"Tagbar: a class outline viewer for Vim
Plug 'majutsushi/tagbar'

"Vim 中文文档
Plug 'yianwillis/vimcdoc'

"automatically highlighting other uses of the current word under the cursor
Plug 'RRethy/vim-illuminate'

Plug 'inkarkat/vim-visualrepeat'

"快速执行当前文件, py/rb/sh,使用message进行结果展示
Plug 'thinca/vim-quickrun'

"theme
Plug 'liuchengxu/space-vim-dark'
Plug 'morhetz/gruvbox'

"UltiSnips is the ultimate solution for snippets in Vim
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

" 使用 ss 启用
nmap ss <Plug>(easymotion-s2)

"Leader 键-空格键作为 Leader(全局变量）---------------------------------
let g:mapleader = ","
noremap <Leader>q <Esc>


" <-- Mappings -->

" Using Ctrl+t to create new tab
imap <C-t> <Esc>:tabnew<CR>
nmap <C-t> :tabnew<CR>

" Using Ctrl+w to close tab
imap <C-w> <Esc>:tabclose<CR>
nmap <C-w> :tabclose<CR>

" Using Ctrl+s to save file
imap <C-s> <Esc>:w<CR>i
nmap <C-s> :w<CR>

" Using Ctrl+Left/Right to traverse tabs
imap <C-Left> <Esc>:tabp<CR>
nmap <C-Left> :tabp<CR>
imap <C-Right> <Esc>:tabn<CR>
nmap <C-Right> :tabn<CR>

" Using Ctrl+r to load init.vim
nmap <C-r> :source ~/.config/nvim/init.vim<CR>

" Using Ctrl+c to toggle spell checking
imap <C-c> <Esc>:setlocal spell!<CR>i
nmap <C-c> :setlocal spell!<CR>

"格式化 markdown 文档
nmap <leader>ac <Plug>(coc-codeaction)

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                            FZF Mappings                                   │
" └───────────────────────────────────────────────────────────────────────────┘
"" FZF
nmap <leader>f :Files<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>c :Commands<CR>
nmap <leader>t :BTags<CR>
nmap <leader>/ :Rg<CR>
nmap <leader>gc :Commits<CR>
nmap <leader>gs :GFiles?<CR>
nmap <leader>sh :History/<CR>

" show mapping on all modes with F1
nmap <F1> <plug>(fzf-maps-n)
imap <F1> <plug>(fzf-maps-i)
vmap <F1> <plug>(fzf-maps-x)

nmap <leader>r :RnvimrToggle<CR>
"✅ Leader 键-空格键作为 Leader(全局变量）---------------------------------
let g:mapleader = ","
noremap <Leader>q <Esc>


" <-- Mappings -->

" Using Cmd+t to create new tab
imap <C-t> <Esc>:tabnew<CR>
nmap <C-t> :tabnew<CR>

" Using Cmd+w to close tab
imap <C-w> <Esc>:tabclose<CR>
nmap <C-w> :tabclose<CR>

" Using Cmd+s to save file
imap <C-s> <Esc>:w<CR>i
nmap <C-s> :w<CR>

" Using Cmd+Left/Right to traverse tabs
imap <C-Left> <Esc>:tabp<CR>
nmap <C-Left> :tabp<CR>
imap <C-Right> <Esc>:tabn<CR>
nmap <C-Right> :tabn<CR>

" Using Ctrl+r to load init.vim
nmap <C-r> :source ~/.config/nvim/init.vim<CR>

" Using Cmd+c to toggle spell checking
imap <C-c> <Esc>:setlocal spell!<CR>i
nmap <C-c> :setlocal spell!<CR>

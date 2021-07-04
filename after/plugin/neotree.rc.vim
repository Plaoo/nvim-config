autocmd FileType nerdtree setlocal relativenumber
"Current path
nnoremap <Leader>nn  :NERDTreeToggle<CR>
"Current file
nnoremap <Leader>pp  :NERDTreeFind<CR>
nnoremap <Leader>n   :NERDTree
"Dir lavoro
nnoremap <Leader>nl   :NERDTree $HOME/lavoro/<CR>


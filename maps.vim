noremap <Space> <Nop>
let mapleader=' '

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let vim_markdown_preview_github=0
let vim_markdown_preview_perl=0
let vim_markdown_preview_pandoc=1
let vim_markdown_preview_browser='firefox'
let vim_markdown_preview_use_xdg_open=1

nnoremap <C-b>       :Buffers<CR>
nnoremap <Leader>gb  :Git blame<CR>
nnoremap <Leader>gg  :Magit<CR>
nnoremap <Leader>q'  ciw''<Esc>P
nnoremap <Leader>q"  ciw""<Esc>P
nnoremap <Leader>q(  ciw()<Esc>P
nnoremap <Leader>q{  ciw{}<Esc>P
nnoremap <Leader>q[  ciw[]<Esc>P
nnoremap <Leader>cc  :call Generate_comments() <CR>
nnoremap <Leader>ii  :e ~/.config/nvim/init.vim <CR>
nnoremap <Leader>bf  :Black<CR>
nnoremap <C-p>	     :MarkdownPreview<CR>
nnoremap <Leader>vt  :VimwikiTable 2 2
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

"Current path
nnoremap <Leader>nn  :NERDTreeToggle<CR>
"Current file
nnoremap <Leader>pp  :NERDTreeFind<CR>
nnoremap <Leader>n   :NERDTree
"Dir lavoro
nnoremap <Leader>nl   :NERDTree $HOME/lavoro/<CR>
nnoremap <C-d>	     :bd<CR>
"remove trailing whitespaces
nnoremap <F8>	     :%s/\s\+$//e
"tabs
set hidden
nnoremap <C-l>	     :bnext<CR>
nnoremap <C-h>       :bprev<CR>

""" Functions
function! Generate_comments()
    let snippet = [
          \ '""" Return a random page.',
          \ '',
          \ '    Performs a GET request to the /page/random/summary endpoint.',
          \ '',
          \ '    Args:',
          \ '        language: The Wikipedia language edition. By default, the English',
          \ '',
          \ '    Returns:',
          \ '        A page resource.',
          \ '',
          \ '    Raises:',
          \ '        ClickException: The HTTP request failed or the HTTP response',
          \ '        contained an invalid body.',
          \ '"""']
    call append(line('.'), snippet)
endfunction

""" FZF window
""" general

let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }
let $FZF_DEFAULT_OPTS="--reverse "

" use rg by default
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
endif

function! CreateCenteredFloatingWindow()
    let width = min([&columns - 4, max([80, &columns - 20])])
    let height = min([&lines - 4, max([20, &lines - 10])])
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = "╭" . repeat("─", width - 2) . "╮"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "╰" . repeat("─", width - 2) . "╯"
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    au BufWipeout <buffer> exe 'bw '.s:buf
endfunction

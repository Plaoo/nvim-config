noremap <Space> <Nop>
let mapleader=' '

""" coq_nvim autocmpletition
let g:coq_settings = { 'keymap.jump_to_mark' : '' }
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let vim_markdown_preview_github=0
let vim_markdown_preview_perl=0
let vim_markdown_preview_pandoc=1
let vim_markdown_preview_browser='firefox'
let vim_markdown_preview_use_xdg_open=1

nnoremap <C-b>       :Buffers<CR>
nnoremap <Leader>ff  :Ag 
nnoremap <Leader>gb  :Git blame<CR>
nnoremap <Leader>gg  :Neogit<CR>
nnoremap <Leader>q'  ciw''<Esc>P
nnoremap <Leader>q"  ciw""<Esc>P
nnoremap <Leader>q(  ciw()<Esc>P
nnoremap <Leader>q{  ciw{}<Esc>P
nnoremap <Leader>q[  ciw[]<Esc>P
nnoremap <Leader>cc  :call Generate_comments() <CR>
nnoremap <Leader>ii  :e ~/.config/nvim/ <CR>
nnoremap <Leader>bf  :Black<CR>
nnoremap <Leader>ss  :w<CR>
nnoremap <C-p>	     :MarkdownPreview<CR>
nnoremap <Leader>vt  :VimwikiTable 2 2
" Snippet selection with space COQ-nvim
inoremap <silent><expr> <Space> complete_info(['selected']).selected != -1 ? "<C-Y>" : "<Space>"

au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

nnoremap <Leader>nn  :NERDTreeToggle<CR>
nnoremap <Leader>pp  :NERDTreeFind<CR>
nnoremap <Leader>pp  :NERDTreeFind<CR>
nnoremap <Leader>n   :NERDTree
nnoremap <Leader>ll  :Files<CR>
""Dir lavoro
"nnoremap <Leader>nl   :NERDTree $HOME/lavoro/<CR>

nnoremap <C-d>	      :bd<CR>
"remove trailing whitespaces
nnoremap <F8>	     :%s/\s\+$//e
" tagbar
nnoremap <F2>	     :TagbarToggle<CR>
"tabs
nnoremap <C-l>	     :bnext<CR>
nnoremap <C-h>	     :bprev<CR>


""" Functions
function! Generate_comments()
    let snippet = [
	  \ '"""Returns a list containing :class:`bluepy.btle.Characteristic`',
          \ 'objects for the peripheral. If no arguments are given, will return all',
          \ 'characteristics. If startHnd and/or endHnd are given, the list is',
          \ 'restricted to characteristics whose handles are within the given range.',
	  \ '',
          \ ':param startHnd: Start index, defaults to 1',
          \ ':type startHnd: int, optional',
          \ ':param endHnd: End index, defaults to 0xFFFF',
          \ ':type endHnd: int, optional',
          \ ':param uuids: a list of UUID strings, defaults to None',
          \ ':type uuids: list, optional',
          \ ':return: List of returned :class:`bluepy.btle.Characteristic` objects',
          \ ':rtype: list',
          \ '"""',]
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

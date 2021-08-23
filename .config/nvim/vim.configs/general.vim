"--         --"
"-- AUTOCMD --"
"--         --"
"
" fix tex file type set
autocmd BufRead,BufNewFile *.tex set filetype=tex
autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown

autocmd FileType tex,latex,markdown setlocal spell spelllang=en_au

" vertically center document when entering insert mode
autocmd InsertEnter * norm zz

" remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

nnoremap <leader>FM :set foldmethod=manual<CR>
nnoremap <leader>FI :set foldmethod=indent<CR>

"--           --"
"-- FUNCTIONS --"
"--           --"
"
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction


"--      --"
"-- MAPS --"
"--      --"
"
nnoremap <A-b> :n **/*

" fix indenting visual block
vmap < <gv
vmap > >gv

" enable and disable auto comment
map <leader>c :setlocal formatoptions-=cro<CR>
map <leader>C :setlocal formatoptions=cro<CR>

" enable spell checking, s for spell check
map <leader>s :setlocal spell! spelllang=en_au<CR>

" enable Disable Auto Indent
map <leader>i :setlocal autoindent<CR>
map <leader>I :setlocal noautoindent<CR>

" shell check
map <leader>p :!clear && shellcheck %<CR>

" compile and open output
map <leader>G :w! \| !comp <c-r>%<CR><CR>
map <leader>o :!opout <c-r>%<CR><CR>

" alias replace all to
nnoremap <A-s> :%s//gI<Left><Left><Left>

" needs 'grep "word" . -R' first
nnoremap <leader><A-s> :cfdo %s//gI<Space>\|<Space>update<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" Save file as sudo when no sudo permissions
cmap w!! w !sudo tee > /dev/null %

" unhighlight searched
nnoremap <leader>n :noh<CR>

inoremap { {}<Esc>i
inoremap {<cr> {<cr>}<c-o>O
" inoremap < <><Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

"--     --"
"-- SET --"
"--     --"
"
set foldmethod=manual
" basic settings
set mouse=a
syntax on
set noignorecase
set smartcase
set encoding=utf-8
set number relativenumber

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

set scrolloff=7

" tab settings
set shiftwidth=2
set softtabstop=2
set tabstop=2

" autocomplete
set wildmode=longest,list,full

" fix splitting
set splitbelow splitright

" Cursor line
set cursorline
set cursorcolumn
:highlight CursorLine guibg=#474270
" :highlight CursorLine guibg=#45416B

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" always show signcolumns
set signcolumn=yes

"--        --"
"-- VISUAL --"
"
" hi Visual term=reverse cterm=reverse guibg=Gray
" hi Visual guifg=White guibg=MediumPurple
"--            --"
"-- DEPRECATED --"
"--            --"
"
" map <A-j> <C-w>j
" map <A-k> <C-w>k
" map <A-l> <C-w>l

" Tab shortcuts
" nnoremap <A-p> :tabp<CR>
" nnoremap <A-n> :tabn<CR>

" ------standard bindings------
" basic file system commands
" nnoremap <A-o> :!touch<Space>
" nnoremap <A-e> :!crf<Space>
" nnoremap <A-d> :!mkdir<Space>

" use system clipboard inside vim
" set clipboard += unnamedplus

" function! s:check_back_space() abort
" let col = col('.') - 1
" return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

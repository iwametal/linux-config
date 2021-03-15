let mapleader=" "

" Use system clipboard
"set clipboard+=unnamedplus

" Occult methods by default
set foldmethod=indent

" -----Basic AutoCmd-----
" Fix tex file type set
autocmd BufRead,BufNewFile *.tex set filetype=tex
autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown

autocmd FileType tex,latex,markdown setlocal spell spelllang=en_au

" Vertically center document when entering insert mode
autocmd InsertEnter * norm zz

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" ------Standard Bindings------
" Basic file system commands
" nnoremap <A-o> :!touch<Space>
" nnoremap <A-e> :!crf<Space>
" nnoremap <A-d> :!mkdir<Space>

nnoremap <A-b> :n **/*

" Fix indenting visual block
vmap < <gv
vmap > >gv

" Enable and disable auto comment
map <leader>c :setlocal formatoptions-=cro<CR>
map <leader>C :setlocal formatoptions=cro<CR>

" Enable spell checking, s for spell check
map <leader>s :setlocal spell! spelllang=en_au<CR>

" Enable Disable Auto Indent
map <leader>i :setlocal autoindent<CR>
map <leader>I :setlocal noautoindent<CR>

" Shell check
map <leader>p :!clear && shellcheck %<CR>

" Compile and open output
map <leader>G :w! \| !comp <c-r>%<CR><CR>
map <leader>o :!opout <c-r>%<CR><CR>

" C scripts call
nnoremap <A-h> :!$HOME/.scripts/c/header-create.sh -e false -n<Space>
nnoremap <A-i> :!$HOME/.scripts/c/header-impl.sh -e false -n<Space>

" map <A-j> <C-w>j
" map <A-k> <C-w>k
" map <A-l> <C-w>l

" Tab shortcuts
" nnoremap <A-p> :tabp<CR>
" nnoremap <A-n> :tabn<CR>

" Alias replace all to
nnoremap <A-s> :%s//gI<Left><Left><Left>

" Alias write  nd quit to Q
nnoremap <leader>q :wq<CR>
nnoremap <leader>w :w<CR>

" Save file as sudo when no sudo permissions
cmap w!! w !sudo tee > /dev/null %

" -----Code Generation-----
" Guide navigation
noremap <leader><Tab> <Esc>/<++><Enter>"_c4l
inoremap <leader><Tab> <Esc>/<++><Enter>"_c4l
vnoremap <leader><Tab> <Esc>/<++><Enter>"_c4l

" general insert commands
inoremap ;g <++>

" shell
map <leader>b i#!/bin/sh<CR><CR>
autocmd FileType sh inoremap ,f ()<Space>{<CR><Tab><++><CR>}<CR><CR><++><Esc>?()<CR>
autocmd FileType sh inoremap ,i if<Space>[<Space>];<Space>then<CR><++><CR>fi<CR><CR><++><Esc>?];<CR>hi<Space>
autocmd FileType sh inoremap ,ei elif<Space>[<Space>];<Space>then<CR><++><CR><Esc>?];<CR>hi<Space>
autocmd FileType sh inoremap ,sw case<Space>""<Space>in<CR><++>)<Space><++><Space>;;<CR><++><CR>esac<CR><CR><++><Esc>?"<CR>i
autocmd FileType sh inoremap ,ca )<Space><++><Space>;;<CR><++><Esc>?)<CR>i

" markdown
" autocmd FileType markdown noremap <leader>r i---<CR>title:<Space><++><CR>author:<Space>"Brodie Robertson"<CR>geometry:<CR>-<Space>top=30mm<CR>-<Space>left=20mm<CR>-<Space>right=20mm<CR>-<Space>bottom=30mm<CR>header-includes:<Space>\|<CR><Tab>\usepackage{float}<CR>\let\origfigure\figure<CR>\let\endorigfigure\endfigure<CR>\renewenvironment{figure}[1][2]<Space>{<CR><Tab>\expandafter\origfigure\expandafter[H]<CR><BS>}<Space>{<CR><Tab>\endorigfigure<CR><BS>}<CR><BS>---<CR><CR>
autocmd FileType markdown inoremap ,i ![](<++>){#fig:<++>}<Space><CR><CR><++><Esc>kkF]i
autocmd FileType markdown inoremap ,a [](<++>)<Space><++><Esc>F]i
autocmd FileType markdown inoremap ,1 #<Space><CR><CR><++><Esc>2k<S-a>
autocmd FileType markdown inoremap ,2 ##<Space><CR><CR><++><Esc>2k<S-a>
autocmd FileType markdown inoremap ,3 ###<Space><CR><CR><++><Esc>2k<S-a>
autocmd FileType markdown inoremap ,4 ####<Space><CR><CR><++><Esc>2k<S-a>
autocmd FileType markdown inoremap ,5 #####<Space><CR><CR><++><Esc>2k<S-a>
autocmd FileType markdown inoremap ,u +<Space><CR><++><Esc>1k<S-a>
autocmd FileType markdown inoremap ,o 1.<Space><CR><++><Esc>1k<S-a>
autocmd FileType markdown inoremap ,f +@fig:

if !exists('g:vscode')
	call plug#begin('~/local/share/nvim/plugged')
	"
	" Themes
	Plug 'voldikss/vim-floaterm'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'tomasiser/vim-code-dark'
	Plug 'dracula/vim'
	Plug 'arcticicestudio/nord-vim'
	Plug 'rakr/vim-one'
	"
	" Transparency
	Plug 't9md/vim-macvim-transparency'
	"
	" Center text
	Plug 'junegunn/goyo.vim'
	"
	" coc.nvim
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"
	" CPP
	Plug 'bfrg/vim-cpp-modern'
	"
	" Easy Motion"
	Plug 'easymotion/vim-easymotion'
	"
	" Fuzzy find files
	Plug 'ctrlpvim/ctrlp.vim'
	"
	" This objectively makes vim better
	Plug 'terryma/vim-multiple-cursors'
	"
	" Working with tags
	Plug 'alvan/vim-closetag'
	Plug 'tpope/vim-surround'
	"
	" Commenting
	Plug 'tpope/vim-commentary'
	"
	" Motions
	"Plug 'justinmk/vim-sneak'
	"
	" Maximizer
	Plug 'szw/vim-maximizer'
	"
	" Misc
	Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
	Plug 'voldikss/vim-floaterm'
	Plug 'airblade/vim-gitgutter'
	Plug 'vimwiki/vimwiki'
	Plug 'tpope/vim-repeat'
	Plug 'tpope/vim-fugitive'
	Plug 'dhruvasagar/vim-table-mode'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
	"
	" Star Wars
	Plug 'mattn/vim-starwars'
	"
	" Syntax highlighting
	Plug 'yuezk/vim-js'
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'HerringtonDarkholme/yats.vim'
	Plug 'rust-lang/rust.vim'
	Plug 'vim-pandoc/vim-pandoc-syntax'

	" Nerd tree
	Plug 'scrooloose/nerdtree'
	Plug 'scrooloose/nerdcommenter'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	"
	" Vim devicons
	Plug 'ryanoasis/vim-devicons'

	" debuger
	Plug 'puremourning/vimspector'

	" vimspector debuger
	"
	" init
	let g:vimspector_enable_mappings = 'HUMAN'
	"
	" gadgets
	let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB' ]
	"
	" mappings
	nnoremap <leader>m :MaximizerToggle!<CR>
	nnoremap <leader>dd :call vimspector#Launch()<CR>
	nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
	nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tabpage)<CR>
	nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
	nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
	nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
	nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
	nnoremap <leader>dR :call vimspector#Reset()<CR>
	nnoremap <leader>dp :call vimspector#Pause()<CR>
	nnoremap <leader>dQ :call vimspector#Stop()<CR>
	nnoremap <leader>de :call vimspector#Eval()<space>
	nnoremap <leader>dW :call vimspector#Watch()<space>
	nnoremap <leader>dO :call vimspector#ShowOutput()<space>

	nmap <leader>dl <Plug>VimspectorSetInto
	nmap <leader>dj <Plug>VimspectorSetOver
	nmap <leader>dk <Plug>VimspectorSetOut
	nmap <leader>d_ <Plug>VimspectorRestart
	nnoremap <leader>d<space> :call vimspector#Continue()<CR>

	nmap <leader>drc <Plug>VimspectorRunToCursor
	nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
	nmap <leader>dbc <Plug>VimspectorToggleConditionalBreakpoint
	"
	" allows for the variable evaluation popup to be displayed
	" for normal mode - the word under the cursor
	nmap <Leader>di <Plug>VimspectorBalloonEval
	" for visual mode, the visually selected text
	xmap <Leader>di <Plug>VimspectorBalloonEval
	"
	"up/down the stack
	nmap <LocalLeader><F11> <Plug>VimspectorUpFrame
	nmap <LocalLeader><F12> <Plug>VimspectorDownFrame

	" Fugitive
	nmap <leader>gs :G<CR>
	nmap <leader>gh :diffget //2<CR>
	nmap <leader>gl :diffget //3<CR>
	nmap <leader>ga :Git add .<CR>
	nmap <leader>gc :Gcommit<CR>
	nmap <leader>gp :Gpush<CR>

	" Nerd tree remap
	nmap <A-f> :NERDTreeToggle<CR><c-w><c-p>
	vmap ++ <plug>NERDCommenterToggle
	nmap ++ <plug>NERDCommenterToggle

	let g:NERDTreeGitStatusWithFlags = 1

	"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
	"let g:NERDTreeGitStatusNodeColorization = 1
	"let g:NERDTreeColorMapCustom = {
				"\ "Staged"    : "#0ee375",
				"\ "Modified"  : "#d9bf91",
				"\ "Renamed"   : "#51C9FC",
				"\ "Untracked" : "#FCE77C",
				"\ "Unmerged"  : "#FC51E6",
				"\ "Dirty"     : "#FFBD61",
				"\ "Clean"     : "#87939A",
				"\ "Ignored"   : "#808080"
				"\ }

	autocmd VimEnter * NERDTree | wincmd p
	let g:NERDTreeIgnore = ['^node_modules$']

	" function! IsNERDTreeOpen()
	" 	return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
	" endfunction

	" " Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
	" " file, and we're not in vimdiff
	" function! SyncTree()
	" 	if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
	" 		NERDTreeFind
	" 		wincmd p
	" 	endif
	" endfunction

	" " Highlight currently open buffer in NERDTree
	" autocmd BufEnter * call SyncTree()

	" Exit Vim if NERDTree is the only window left.
	autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
				\ quit | endif

	" If another buffer tries to replace NERDTree, put in the other window, and bring back NERDTree.
	autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
				\ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

	nmap <Leader>R :NERDTreeFocus<cr>R<c-w><c-p>

	" C - CPP MODERN
	let c_no_curly_error = 1

	" Changing comment string
	autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s

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

	" always show signcolumns
	set signcolumn=yes

	set scrolloff=7

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

	" Use <c-space> to trigger completion.
	inoremap <silent><expr> <c-space> coc#refresh()

	" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
	" Coc only does snippet and additional edit on confirm.
	inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

	" Use `[c` and `]c` to navigate diagnostics
	nmap <silent> [c <Plug>(coc-diagnostic-prev)
	nmap <silent> ]c <Plug>(coc-diagnostic-next)

	" Remap keys for gotos
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)

	" Use K to show documentation in preview window
	nnoremap <silent> K :call <SID>show_documentation()<CR>

	function! s:show_documentation()
		if (index(['vim','help'], &filetype) >= 0)
			execute 'h '.expand('<cword>')
		else
			call CocAction('doHover')
		endif
	endfunction

	" Highlight symbol under cursor on CursorHold
	autocmd CursorHold * silent call CocActionAsync('highlight')

	" Remap for rename current word
	nmap <leader>rn <Plug>(coc-rename)

	" Remap for format selected region
	xmap <leader>f  <Plug>(coc-format-selected)
	nmap <leader>f  <Plug>(coc-format-selected)

	augroup mygroup
		autocmd!
		" Setup formatexpr specified filetype(s).
		autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
		" Update signature help on jump placeholder
		autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
	augroup end

	" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
	xmap <leader>a  <Plug>(coc-codeaction-selected)
	nmap <leader>a  <Plug>(coc-codeaction-selected)

	" Remap for do codeAction of current line
	nmap <leader>ac  <Plug>(coc-codeaction)
	" Fix autofix problem of current line
	nmap <leader>qf  <Plug>(coc-fix-current)

	" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
	nmap <silent> <TAB> <Plug>(coc-range-select)
	xmap <silent> <TAB> <Plug>(coc-range-select)
	xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

	" Use `:Format` to format current buffer
	command! -nargs=0 Format :call CocAction('format')

	" Use `:Fold` to fold current buffer
	command! -nargs=? Fold :call     CocAction('fold', <f-args>)

	" use `:OR` for organize import of current buffer
	command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

	" Add status line support, for integration with other plugin, checkout `:h coc-status`
	set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

	" Using CocList
	" Show all diagnostics
	nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
	" Manage extensions
	nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
	" Show commands
	nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
	" Find symbol of current document
	nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
	" Search workspace symbols
	nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
	" Do default action for next item.
	nnoremap <silent> <space>j  :<C-u>CocNext<CR>
	" Do default action for previous item.
	nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
	" Resume latest coc list
	nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

	call plug#end()

	" basic settings
	set mouse=a
	syntax on
	set noignorecase
	set smartcase
	set encoding=utf-8
	set number relativenumber
	" set termguicolors

	"Credit joshdick
	"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
	"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
	"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
	"if (empty($TMUX))
	"if (has("nvim"))
	"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
	"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	"endif
	"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
	"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
	" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
	"if (has("termguicolors"))
	"set termguicolors
	"endif
	"endif

	colorscheme nord
	" set background=dark "dark version - one
	" set background=light "light version - one
	" let g:dracula_colorterm = 0
	" hi Visual guifg=#E6E6FA guibg=#000000 gui=none
	syntax on
	hi Visual term=reverse cterm=reverse guibg=Gray

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
	:highlight CursorLine ctermbg=Black
	:highlight CursorColumn ctermbg=Black

	" table mode
	let g:table_mode_delete_row_map = "<leader>tdr"

	" git messenger
	noremap <C-g> :GitMessenger<CR>
	let g:git_messenger_no_default_mappings = v:true

	" goyo
	noremap <leader>gg :Goyo<CR>

	" float term
	nnoremap <A-t> :FloatermNew<CR>
	nnoremap <A-r> :FloatermNew ranger<CR>

	" git gutter
	highlight GitGutterAdd guifg=#009900 ctermfg=Green
	highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
	highlight GitGutterDelete guifg=#ff2222 ctermfg=Red
	nmap ) <Plug>(GitGutterNextHunk)
	nmap ( <Plug>(GitGutterPrevHunk)
	let g:gitgutter_enabled = 1
	let g:gitgutter_map_keys = 0
	let g:gitgutter_highlight_linenrs = 1

	nmap gsp <Plug>(GitGutterPreviewHunk)

	" vim-airline
	let g:airline#extensions#wordcount#enabled = 1
	let g:airline#extensions#hunks#non_zero_only = 1
	let g:airline_theme='one'

	" Vim Hexokinase
	let g:Hexokinase_refreshEvents = ['InsertLeave']

	let g:Hexokinase_optInPatterns = [
				\     'full_hex',
				\     'triple_hex',
				\     'rgb',
				\     'rgba',
				\     'hsl',
				\     'hsla',
				\     'colour_names'
				\ ]

	let g:Hexokinase_highlighters = ['backgroundfull']

	" Reenable hexokinase on enter
	autocmd VimEnter * HexokinaseTurnOn

	" ctrlp
	nnoremap <A-z> :CtrlP<CR>
	let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

	" Netrw
	" let g:netrw_banner = 0
	" let g:netrw_liststyle = 3
	" let g:netrw_browse_split = 4
	" let g:netrw_winsize = 20

	" function! OpenToRight()
	" 	:normal v
	" 	let g:path=expand('%:p')
	" 	:q!
	" 	execute 'belowright vnew' g:path
	" 	:normal <C-w>l
	" endfunction

	" function! OpenBelow()
	" 	:normal v
	" 	let g:path=expand('%:p')
	" 	:q!
	" 	execute 'belowright new' g:path
	" 	:normal <C-w>l
	" endfunction

	" function! OpenTab()
	" 	:normal v
	" 	let g:path=expand('%:p')
	" 	:q!
	" 	execute 'tabedit' g:path
	" 	:normal <C-w>l
	" endfunction


	" function! NetrwMappings()
	" 	" Hack fix to make ctrl-l work properly
	" 	noremap <buffer> <A-l> <C-w>l
	" 	noremap <buffer> <C-l> <C-w>l
	" 	" noremap <silent> <A-f> :call ToggleNetrw()<CR>
	" 	noremap <buffer> V :call OpenToRight()<cr>
	" 	noremap <buffer> H :call OpenBelow()<cr>
	" 	noremap <buffer> T :call OpenTab()<cr>
	" endfunction

	" augroup netrw_mappings
	" 	autocmd!
	" 	autocmd filetype netrw call NetrwMappings()
	" augroup END

	" Allow for netrw to be toggled
	" function! ToggleNetrw()
	" 	if g:NetrwIsOpen
	" 		let i = bufnr("$")
	" 		while (i >= 1)
	" 			if (getbufvar(i, "&filetype") == "netrw")
	" 				silent exe "bwipeout " . i
	" 			endif
	" 			let i-=1
	" 		endwhile
	" 		let g:NetrwIsOpen=0
	" 	else
	" 		let g:NetrwIsOpen=1
	" 		silent Lexplore
	" 	endif
	" endfunction

	" Check before opening buffer on any file
	" function! NetrwOnBufferOpen()
	" 	if exists('b:noNetrw')
	" 		return
	" 	endif
	" 	call ToggleNetrw()
	" endfun

	" Close Netrw if it's the only buffer open
	autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif

	" Make netrw act like a project Draw
	augroup ProjectDrawer
		autocmd!
		" Don't open Netrw
		autocmd VimEnter ~/.config/joplin/tmp/*,/tmp/calcurse*,~/.calcurse/notes/*,~/vimwiki/*,*/.git/COMMIT_EDITMSG let b:noNetrw=1
		" autocmd VimEnter * :call NetrwOnBufferOpen()
	augroup END

	" let g:NetrwIsOpen=0

	" ------Vim Auto Closetag------
	" filenames like *.xml, *.html, *.xhtml, ...
	" These are the file extensions where this plugin is enabled.
	let g:closetag_filenames = '*.html,*.xhtml,*.jsx,*.js,*.tsx'

	" filenames like *.xml, *.xhtml, ...
	" This will make the list of non-closing tags self-closing in the specified files.
	let g:closetag_xhtml_filenames = '*.xml,*.xhtml,*.jsx,*.js,*.tsx'

	" filetypes like xml, html, xhtml, ...
	" These are the file types where this plugin is enabled.
	let g:closetag_filetypes = 'html,xhtml,jsx,js,tsx'

	" filetypes like xml, xhtml, ...
	" This will make the list of non-closing tags self-closing in the specified files.
	let g:closetag_xhtml_filetypes = 'xml,xhtml,jsx,js,tsx'

	" integer value [0|1]
	" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
	let g:closetag_emptyTags_caseSensitive = 1

	" Disables auto-close if not in a "valid" region (based on filetype)
	let g:closetag_regions = {
				\ 'typescript.tsx': 'jsxRegion,tsxRegion',
				\ 'javascript.jsx': 'jsxRegion',
				\ }

	" Shortcut for closing tags, default is '>'
	let g:closetag_shortcut = '>'

	" Add > at current position without closing the current tag, default is ''
	let g:closetag_close_shortcut = '<leader>>'

	" ------COC SETTINGS------
	" prettier command for coc
	command! -nargs=0 Prettier :CocCommand prettier.formatFile
	let g:coc_global_extensions = [
				\ 'coc-snippets',
				\ 'coc-pairs',
				\ 'coc-tsserver',
				\ 'coc-html',
				\ 'coc-css',
				\ 'coc-prettier',
				\ 'coc-json',
				\ 'coc-angular',
				\ 'coc-vimtex'
				\ ]
				" \ 'coc-eslint',

	inoremap {<cr> {<cr>}<c-o>O

	let g:UltiSnipsSnippetsDir = "~/.confg/nvim/custom_snippets"

	" From Coc Readme
	set updatetime=300

	" Some servers have issues with backup files, see #649
	set nobackup
	set nowritebackup

	" don't give |ins-completion-menu| messages.
	set shortmess+=c

	" always show signcolumns
	set signcolumn=yes

	"" Use tab for trigger completion with characters ahead and navigate.
	"" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
	" inoremap <silent><expr> <TAB>
	" \ pumvisible() ? "\<C-n>" :
	" \ <SID>check_back_space() ? "\<TAB>" :
	" \ coc#refresh()
	" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

	" function! s:check_back_space() abort
	" let col = col('.') - 1
	" return !col || getline('.')[col - 1]  =~# '\s'
	" endfunction

	" Use <c-space> to trigger completion.
	inoremap <silent><expr> <c-space> coc#refresh()

	" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
	" Coc only does snippet and additional edit on confirm.
	inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
	" Or use `complete_info` if your vim support it, like:
	" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

	" Use `[g` and `]g` to navigate diagnostics
	nmap <silent> [g <Plug>(coc-diagnostic-prev)
	nmap <silent> ]g <Plug>(coc-diagnostic-next)

	" Remap keys for gotos
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)

	" Use D to show documentation in preview window
	" nnoremap <silent> D :call <SID>show_documentation()<CR>

	function! s:show_documentation()
		if (index(['vim','help'], &filetype) >= 0)
			execute 'h '.expand('<cword>')
		else
			call CocAction('doHover')
		endif
	endfunction

	" Remap for rename current word
	nmap <rn> <Plug>(coc-rename)

	" Remap for format selected region
	xmap <leader>f  <Plug>(coc-format-selected)
	nmap <leader>f  <Plug>(coc-format-selected)

	augroup mygroup
		autocmd!
		" Setup formatexpr specified filetype(s).
		autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
		" Update signature help on jump placeholder
		autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
	augroup end

	" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
	xmap <leader>a  <Plug>(coc-codeaction-selected)
	nmap <leader>a  <Plug>(coc-codeaction-selected)

	" Remap for do codeAction of current line
	nmap <leader>ac  <Plug>(coc-codeaction)
	" Fix autofix problem of current line
	nmap <leader>qf  <Plug>(coc-fix-current)

	" Create mappings for function text object, requires document symbols feature of languageserver.
	xmap if <Plug>(coc-funcobj-i)
	xmap af <Plug>(coc-funcobj-a)
	omap if <Plug>(coc-funcobj-i)
	omap af <Plug>(coc-funcobj-a)

	" Use `:Format` to format current buffer
	command! -nargs=0 Format :call CocAction('format')

	" Use `:Fold` to fold current buffer
	command! -nargs=? Fold :call     CocAction('fold', <f-args>)

	" use `:OR` for organize import of current buffer
	command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

	" Add status line support, for integration with other plugin, checkout `:h coc-status`
	set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

endif

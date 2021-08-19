"--               --"
"-- FILE EXPLORER --"
"--               --"
"
"--           --"
"-- NERD TREE --"
"--           --"
"
" Nerd tree remap
nmap <A-f> :NERDTreeToggle<CR><c-w><c-p>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

let g:NERDTreeGitStatusWithFlags = 1

autocmd VimEnter * NERDTree | wincmd p
let g:NERDTreeIgnore = ['^node_modules$']

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
			\ quit | endif

" If another buffer tries to replace NERDTree, put in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
			\ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

nmap <Leader>R :NERDTreeFocus<cr>R<c-w><c-p>

"-- NETRW --"
"
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

"--            --"
"-- DEPRECATED --"
"--            --"
"
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


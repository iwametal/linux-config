"--               --"
"-- FILE EXPLORER --"
"--               --"
"
"--           --"
"-- NERD TREE --"
"--           --"
"
"" Nerd tree remap
"nmap <A-f> :NERDTreeToggle<CR><c-w><c-p>
"vmap ++ <plug>NERDCommenterToggle
"nmap ++ <plug>NERDCommenterToggle

"let g:NERDTreeGitStatusWithFlags = 1

"autocmd VimEnter * NERDTree | wincmd p
"let g:NERDTreeIgnore = ['^node_modules$']

"" Exit Vim if NERDTree is the only window left.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
"			\ quit | endif

"" If another buffer tries to replace NERDTree, put in the other window, and bring back NERDTree.
"autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
"			\ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

"nmap <Leader>R :NERDTreeFocus<cr>R<c-w><c-p>

""-- NETRW --"
""
"" Close Netrw if it's the only buffer open
"autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif

"" Make netrw act like a project Draw
"augroup ProjectDrawer
"	autocmd!
"	" Don't open Netrw
"	autocmd VimEnter ~/.config/joplin/tmp/*,/tmp/calcurse*,~/.calcurse/notes/*,~/vimwiki/*,*/.git/COMMIT_EDITMSG let b:noNetrw=1
"	" autocmd VimEnter * :call NetrwOnBufferOpen()
"augroup END

"" let g:NetrwIsOpen=0

""--            --"
""-- DEPRECATED --"
""--            --"
""
""let g:WebDevIconsUnicodeDecorateFolderNodes = 1
""let g:NERDTreeGitStatusNodeColorization = 1
""let g:NERDTreeColorMapCustom = {
"			"\ "Staged"    : "#0ee375",
"			"\ "Modified"  : "#d9bf91",
"			"\ "Renamed"   : "#51C9FC",
"			"\ "Untracked" : "#FCE77C",
"			"\ "Unmerged"  : "#FC51E6",
"			"\ "Dirty"     : "#FFBD61",
"			"\ "Clean"     : "#87939A",
"			"\ "Ignored"   : "#808080"
"			"\ }

"" function! IsNERDTreeOpen()
"" 	return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
"" endfunction

"" " Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
"" " file, and we're not in vimdiff
"" function! SyncTree()
"" 	if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
"" 		NERDTreeFind
"" 		wincmd p
"" 	endif
"" endfunction

"" " Highlight currently open buffer in NERDTree
"" autocmd BufEnter * call SyncTree()

"--           --"
"-- NVIM TREE --"
"--           --"
"
let g:nvim_tree_allow_resize = 1
let g:nvim_tree_side = 'left' "left by default
let g:nvim_tree_width = 42 "30 by default, can be width_in_columns or 'width_in_percent%'
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
let g:nvim_tree_gitignore = 1 "0 by default
let g:nvim_tree_auto_open = 0 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:nvim_tree_auto_close = 0 "0 by default, closes the tree when it's the last window
let g:nvim_tree_auto_ignore_ft = [ 'startify', 'dashboard' ] "empty by default, don't auto open tree on specific filetypes.
let g:nvim_tree_quit_on_open = 0 "0 by default, closes the tree when you open a file
let g:nvim_tree_follow = 0 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_hide_dotfiles = 1 "0 by default, this option hides files and folders starting with a dot `.`
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_tab_open = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
let g:nvim_tree_auto_resize = 0 "1 by default, will resize the tree to its saved width when opening a file
let g:nvim_tree_disable_netrw = 0 "1 by default, disables netrw
let g:nvim_tree_hijack_netrw = 0 "1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
let g:nvim_tree_add_trailing = 0 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_lsp_diagnostics = 1 "0 by default, will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics
let g:nvim_tree_disable_window_picker = 1 "0 by default, will disable the window picker.
let g:nvim_tree_hijack_cursor = 0 "1 by default, when moving cursor in the tree, will position the cursor at the start of the file on the current line
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_update_cwd = 1 "0 by default, will update the tree cwd when changing nvim's directory (DirChanged event). Behaves strangely with autochdir set.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_window_picker_exclude = {
    \   'filetype': [
    \     'packer',
    \     'qf'
    \   ],
    \   'buftype': [
    \     'terminal'
    \   ]
    \ }
" Dictionary of buffer option names mapped to a list of option values that
" indicates to the window picker that the buffer's window should not be
" selectable.
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 0,
    \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath.
"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
"but this will not work when you set indent_markers (because of UI conflict)

" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   },
    \   'lsp': {
    \     'hint': "",
    \     'info': "",
    \     'warning': "",
    \     'error': "",
    \   }
    \ }

nnoremap <A-f> :NvimTreeToggle<CR>
nnoremap <leader>R :NvimTreeRefresh<CR>
nnoremap <leader>N :NvimTreeFindFile<CR>
nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>]b :BufferLineCyclePrev<CR>
nnoremap <silent><leader>bn :BufferLineCycleNext<CR>
nnoremap <silent><leader>bp :BufferLineCyclePrev<CR>
nnoremap <silent><leader>bb :BufferLinePick<CR>
nnoremap <silent><leader>bc :BufferLinePickClose<CR>
" NvimTreeOpen, NvimTreeClose and NvimTreeFocus are also available if you need them

set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue

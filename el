[1mdiff --git a/.config/nvim/vim.configs/plugins.config/completion.vim b/.config/nvim/vim.configs/plugins.config/completion.vim[m
[1mindex 82dd48b..faab632 100644[m
[1m--- a/.config/nvim/vim.configs/plugins.config/completion.vim[m
[1m+++ b/.config/nvim/vim.configs/plugins.config/completion.vim[m
[36m@@ -7,6 +7,33 @@[m
 "-- COC --"[m
 "--     --"[m
 "[m
[32m+[m[32m"-- INIT --"[m
[32m+[m[32m"[m
[32m+[m[32m" if hidden is not set, TextEdit might fail.[m
[32m+[m[32mset hidden[m
[32m+[m
[32m+[m[32m" Some servers have issues with backup files, see #649[m
[32m+[m[32mset nobackup[m
[32m+[m[32mset nowritebackup[m
[32m+[m
[32m+[m[32m" Better display for messages[m
[32m+[m[32mset cmdheight=2[m
[32m+[m
[32m+[m[32m" You will have bad experience for diagnostic messages when it's default 4000.[m
[32m+[m[32mset updatetime=300[m
[32m+[m
[32m+[m[32m" don't give |ins-completion-menu| messages.[m
[32m+[m[32mset shortmess+=c[m
[32m+[m
[32m+[m[32m" Always show the signcolumn, otherwise it would shift the text each time[m
[32m+[m[32m" diagnostics appear/become resolved.[m
[32m+[m[32mif has("nvim-0.5.0") || has("patch-8.1.1564")[m
[32m+[m	[32m" Recently vim can merge signcolumn and number column into one[m
[32m+[m	[32mset signcolumn=number[m
[32m+[m[32melse[m
[32m+[m	[32mset signcolumn=yes[m
[32m+[m[32mendif[m
[32m+[m
 "-- AUTOCMD --"[m
 "[m
 " Highlight symbol under cursor on CursorHold[m
[36m@@ -65,6 +92,19 @@[m [mfunction! s:show_documentation()[m
 	endif[m
 endfunction[m
 [m
[32m+[m[32m" Use tab for trigger completion with characters ahead and navigate.[m
[32m+[m[32m" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.[m
[32m+[m[32minoremap <silent><expr> <TAB>[m
[32m+[m			[32m\ pumvisible() ? "\<C-n>" :[m
[32m+[m			[32m\ <SID>check_back_space() ? "\<TAB>" :[m
[32m+[m			[32m\ coc#refresh()[m
[32m+[m[32minoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"[m
[32m+[m
[32m+[m[32mfunction! s:check_back_space() abort[m
[32m+[m	[32mlet col = col('.') - 1[m
[32m+[m	[32mreturn !col || getline('.')[col - 1]  =~# '\s'[m
[32m+[m[32mendfunction[m
[32m+[m
 "-- MAP --"[m
 "[m
 nnoremap <leader>cr :CocRestart<CR>[m
[36m@@ -77,8 +117,8 @@[m [minoremap <silent><expr> <c-space> coc#refresh()[m
 inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"[m
 [m
 " Use `[c` and `]c` to navigate diagnostics[m
[31m-nmap <silent> [c <Plug>(coc-diagnostic-prev)[m
[31m-nmap <silent> ]c <Plug>(coc-diagnostic-next)[m
[32m+[m[32m" nmap <silent> [c <Plug>(coc-diagnostic-prev)[m
[32m+[m[32m" nmap <silent> ]c <Plug>(coc-diagnostic-next)[m
 [m
 " Use `[g` and `]g` to navigate diagnostics[m
 nmap <silent> [g <Plug>(coc-diagnostic-prev)[m

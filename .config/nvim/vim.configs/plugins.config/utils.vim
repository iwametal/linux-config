"--                      --"
"-- GENERAL UTIL PLUGINS --"
"--                      --"
"
"--             --"
"-- CENTER TEXT --"
"--             --"
"
" goyo
noremap <leader>gg :Goyo<CR>


"--          --"
"-- COMMENTS --"
"--          --"
"
Plug 'tpope/vim-commentary'

"--        --"
"-- CURSOR --"
"--        --"
"
Plug 'terryma/vim-multiple-cursors'

"--       --"
"-- ICONS --"
"--       --"
"
Plug 'ryanoasis/vim-devicons'

"--          --"
"-- MOVEMENT --"
"--          --"
"
Plug 'easymotion/vim-easymotion'

"--        --"
"-- REPEAT --"
"--        --"
"
Plug 'tpope/vim-repeat'

"--            --"
"-- SERVER NVR --"
"--            --"
"
Plug 'mhinz/neovim-remote' " Solving exec vim \"problems\"

"--          --"
"-- TERMINAL --"
"--          --"
"
" float term
nnoremap <A-t> :FloatermNew<CR>
nnoremap <A-r> :FloatermNew ranger<CR>

"--                    --"
"-- VIM WINDOW MANAGER --"
"--                    --"
"
nnoremap <leader>m :MaximizerToggle!<CR>

"--      --"
"-- WIKI --"
"--      --"
"
Plug 'vimwiki/vimwiki'

"--            --"
"-- DEPRECATED --"
"--            --"
"
"
" " nnoremap <leader>dc :call
" GotoWindow(g:vimspector_session_windows.code)<CR>
" " nnoremap <leader>dt :call
" GotoWindow(g:vimspector_session_windows.tabpage)<CR>
" " nnoremap <leader>dv :call
" GotoWindow(g:vimspector_session_windows.variables)<CR>
" " nnoremap <leader>dw :call
" GotoWindow(g:vimspector_session_windows.watches)<CR>
" " nnoremap <leader>ds :call
" GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
" " nnoremap <leader>do :call
" GotoWindow(g:vimspector_session_windows.output)<CR>

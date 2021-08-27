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

"--        --"
"-- CURSOR --"
"--        --"
"

"--       --"
"-- ICONS --"
"--       --"
"

"--             --"
"-- INDENTATION --"
"--             --"
"
" lua << EOF
" require("indent_blankline").setup {
" 	space_char_blankline = " ",
" 	show_current_context = true,
" }
" EOF

"--       --"
"-- MATCH --"
"--       --"
"
let g:loaded_matchit = 1

"--          --"
"-- MOVEMENT --"
"--          --"
"

"--        --"
"-- REPEAT --"
"--        --"
"

"--            --"
"-- SERVER NVR --"
"--            --"
"

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

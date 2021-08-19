"--        --"
"-- SEARCH --"
"--        --"
"
"--                  --"
"-- FUZZY FIND FILES --"
"--                  --"
"
" FZF configurations
" Search by file name
nmap <leader>PF :Files<CR>

" Search into files (including the file content)
nmap <leader>PR :Rg<CR>

" Search a line in the current file (buffer)
nmap <leader>PL :BLines<CR>

" Search a line in all buffers
nmap <leader>PB :Lines<CR>

" Search an opened buffer
nmap <leader>PP :Buffers<CR>

" Search a command into the command history
nmap <leader>PH :History:<CR>

" Do not consider the file name, only the
" content of the file in "Rg" command
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

" ctrlp
nnoremap <A-z> :CtrlP<CR>
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

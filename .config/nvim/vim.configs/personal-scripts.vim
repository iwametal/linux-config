"--           --"
"-- C SCRIPTS --"
"--           --"
"
" library create
nnoremap <A-h> :!$HOME/.scripts/c/header-create.sh -e false -n<Space>
" library implement
nnoremap <A-i> :!$HOME/.scripts/c/header-impl.sh -e false -n<Space>
" header path include
nnoremap <A-a> :.!$HOME/.scripts/c/include.sh -h<Space>

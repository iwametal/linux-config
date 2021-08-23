"--               --"
"-- THEME PLUGINS --"
"--               --"
"
"--             --"
"-- COLOR TEXTS --"
"--             --"
"
" colors
" lua require'plug-colorizer'


"--               --"
"-- VISUAL THEMES --"
"--               --"
"
syntax on
set termguicolors
colorscheme nord
" set background=dark "dark version - one
" set background=light "light version - one
" highlight Normal guibg=#0A0613
" let g:dracula_colorterm = 0

" :highlight CursorLine ctermbg=Black
" :highlight CursorColumn ctermbg=Black

" hi Visual term=reverse cterm=reverse guibg=Gray
hi Visual cterm=bold guifg=White guibg=DarkViolet

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

nnoremap <leader>HT :HexokinaseToggle<CR>

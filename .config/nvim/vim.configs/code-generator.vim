"--                          --"
"-- GENERAL GUIDE NAVIGATION --"
"--                          --"
"
noremap <leader><Tab> <Esc>\/\*IWA\*\/<Enter>"_c7l
inoremap <leader><Tab> <Esc>\/\*IWA\*\/<Enter>"_c7l
vnoremap <leader><Tab> <Esc>\/\*IWA\*\/<Enter>"_c7l

"--                         --"
"-- GENERAL INSERT COMMANDS --"
"--                         --"
"
inoremap ;g /*IWA*/

"--       --"
"-- SHELL --"
"--       --"
"
map <leader>b ggO#!/bin/sh<CR>
autocmd FileType sh inoremap ,f a()<CR>{<CR><CR>}<Esc>ki<Tab>/*IWA*/<Esc>2k^s
autocmd FileType sh inoremap ,i if<Space>[<Space>]<Space>;<Space>then<CR>/*IWA*/<CR>fi<Esc>?]<Space>;<CR>:noh<CR>hi<Space>
autocmd FileType sh inoremap ,ei <ESC>oelif<Space>[<Space>]<Space>;<Space>then<CR>/*IWA*/<CR><Esc>?]<Space>;<CR>:noh<CR>hi<Space>
autocmd FileType sh inoremap ,sw case<Space>""<Space>in<CR>'/*IWA*/')<CR>/*IWA*/<CR>;;<CR>/*IWA*/<CR>esac<Esc>?"<CR>:noh<CR>i
autocmd FileType sh inoremap ,ca '')<CR>/*IWA*/<CR>;;<CR>/*IWA*/<Esc>?)<CR>:noh<CR>hi

"--          --"
"-- MARKDOWN --"
"--          --"
"
" autocmd FileType markdown noremap <leader>r i---<CR>title:<Space>/*IWA*/<CR>author:<Space>"Brodie Robertson"<CR>geometry:<CR>-<Space>top=30mm<CR>-<Space>left=20mm<CR>-<Space>right=20mm<CR>-<Space>bottom=30mm<CR>header-includes:<Space>\|<CR><Tab>\usepackage{float}<CR>\let\origfigure\figure<CR>\let\endorigfigure\endfigure<CR>\renewenvironment{figure}[1][2]<Space>{<CR><Tab>\expandafter\origfigure\expandafter[H]<CR><BS>}<Space>{<CR><Tab>\endorigfigure<CR><BS>}<CR><BS>---<CR><CR>
autocmd FileType markdown inoremap ,i ![](/*IWA*/){#fig:/*IWA*/}<Space><CR><CR>/*IWA*/<Esc>kkF]i
autocmd FileType markdown inoremap ,a [](/*IWA*/)<Space>/*IWA*/<Esc>F]i
autocmd FileType markdown inoremap ,1 #<Space><CR><CR>/*IWA*/<Esc>2k<S-a>
autocmd FileType markdown inoremap ,2 ##<Space><CR><CR>/*IWA*/<Esc>2k<S-a>
autocmd FileType markdown inoremap ,3 ###<Space><CR><CR>/*IWA*/<Esc>2k<S-a>
autocmd FileType markdown inoremap ,4 ####<Space><CR><CR>/*IWA*/<Esc>2k<S-a>
autocmd FileType markdown inoremap ,5 #####<Space><CR><CR>/*IWA*/<Esc>2k<S-a>
autocmd FileType markdown inoremap ,u +<Space><CR>/*IWA*/<Esc>1k<S-a>
autocmd FileType markdown inoremap ,o 1.<Space><CR>/*IWA*/<Esc>1k<S-a>
autocmd FileType markdown inoremap ,f +@fig:

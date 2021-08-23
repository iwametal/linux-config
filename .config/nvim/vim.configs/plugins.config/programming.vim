"--             --"
"-- PROGRAMMING --"
"--             --"
"
"--         --"
"-- GENERAL --"
"--         --"
"
" Changing comment string
autocmd FileType java setlocal commentstring=//\ %s
let g:UltiSnipsSnippetsDir = "~/.confg/nvim/custom_snippets"

"--       --"
"-- C/CPP --"
"--       --"
"
" C - CPP MODERN
let c_no_curly_error = 1

"--    --"
"-- C# --"
"--    --"
"
augroup omnisharp_commands
	autocmd!

	" Show type information automatically when the cursor stops moving.
	" Note that the type is echoed to the Vim command line, and will overwrite
	" any other messages in this space including e.g. ALE linting messages.
	autocmd CursorHold *.cs OmniSharpTypeLookup

	let g:OmniSharp_server_use_mono = 1

	" The following commands are contextual, based on the cursor position.
	autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
	autocmd FileType cs nmap <silent> <buffer> <Leader>osfu <Plug>(omnisharp_find_usages)
	autocmd FileType cs nmap <silent> <buffer> <Leader>osfi <Plug>(omnisharp_find_implementations)
	autocmd FileType cs nmap <silent> <buffer> <Leader>ospd <Plug>(omnisharp_preview_definition)
	autocmd FileType cs nmap <silent> <buffer> <Leader>ospi <Plug>(omnisharp_preview_implementations)
	autocmd FileType cs nmap <silent> <buffer> <Leader>ost <Plug>(omnisharp_type_lookup)
	autocmd FileType cs nmap <silent> <buffer> <Leader>osd <Plug>(omnisharp_documentation)
	autocmd FileType cs nmap <silent> <buffer> <Leader>osfs <Plug>(omnisharp_find_symbol)
	autocmd FileType cs nmap <silent> <buffer> <Leader>osfx <Plug>(omnisharp_fix_usings)
	autocmd FileType cs nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
	autocmd FileType cs imap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)

	" Navigate up and down by method/property/field
	autocmd FileType cs nmap <silent> <buffer> [[ <Plug>(omnisharp_navigate_up)
	autocmd FileType cs nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)
	" Find all code errors/warnings for the current solution and populate the quickfix window
	autocmd FileType cs nmap <silent> <buffer> <Leader>osgcc <Plug>(omnisharp_global_code_check)
	" Contextual code actions (uses fzf, vim-clap, CtrlP or unite.vim selector when available)
	autocmd FileType cs nmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
	autocmd FileType cs xmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
	" Repeat the last code action performed (does not use a selector)
	autocmd FileType cs nmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)
	autocmd FileType cs xmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)

	autocmd FileType cs nmap <silent> <buffer> <Leader>os= <Plug>(omnisharp_code_format)

	autocmd FileType cs nmap <silent> <buffer> <Leader>osnm <Plug>(omnisharp_rename)

	autocmd FileType cs nmap <silent> <buffer> <Leader>osre <Plug>(omnisharp_restart_server)
	autocmd FileType cs nmap <silent> <buffer> <Leader>osst <Plug>(omnisharp_start_server)
	autocmd FileType cs nmap <silent> <buffer> <Leader>ossp <Plug>(omnisharp_stop_server)
augroup END

"-- ALE --"
"
" let g:ale_linters = {
" 			\ 'cs': ['OmniSharp']
" 			\ }

"--      --"
"-- DART --"
"--      --"
"
"
augroup flutter_commands
	autocmd filetype dart nmap <leader>fcm :CocCommand<space>flutter.
	autocmd filetype dart nmap <leader>fat :CocCommand<space>flutter.attach<cr>
	autocmd filetype dart nmap <leader>fcr :CocCommand<space>flutter.create<cr>
	autocmd filetype dart nmap <leader>fdd :CocCommand<space>flutter.dev.detach<cr>
	autocmd filetype dart nmap <leader>fhr :CocCommand<space>flutter.dev.hotReload<cr>
	autocmd filetype dart nmap <leader>fhR :CocCommand<space>flutter.dev.hotRestart<cr>
	autocmd filetype dart nmap <leader>fdq :CocCommand<space>flutter.dev.quit<cr>
	autocmd filetype dart nmap <leader>fds :CocCommand<space>flutter.dev.screenshot<cr>
	autocmd filetype dart nmap <leader>fdv :CocCommand<space>flutter.devices<cr>
	autocmd filetype dart nmap <leader>fr :CocCommand<space>flutter.run<cr>
	autocmd filetype dart nmap <leader>fup :CocCommand<space>flutter.upgrade<cr>

	let g:lsc_server_commands = {'dart': 'dart_language_server'}
	let g:lsc_auto_map = v:true
	autocmd completedone * silent! pclose
augroup end

"--       --"
"-- DEBUG --"
"--       --"
"
let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB' ]
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dc :call vimspector#Continue()<CR>
nnoremap <leader>dr :call vimspector#Restart#<CR>
nnoremap <leader>d_ :call vimspector#Reset()<CR>
nnoremap <leader>dp :call vimspector#Pause()<CR>
nnoremap <leader>dq :call vimspector#Stop()<CR>
nmap <leader>de :VimspectorEval<space>
nmap <leader>dw :VimspectorWatch<space>
nmap <leader>do :VimspectorShowOutput<space>
nnoremap <leader>dl :call vimspector#StepInto()<CR>
nnoremap <leader>dj :call vimspector#StepOver()<CR>
nnoremap <leader>dk :call vimspector#StepOut()<CR>
" nnoremap <leader>d<space> :call vimspector#Continue()<CR>
nmap <leader>drc <Plug>VimspectorRunToCursor
nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <leader>dbc <Plug>VimspectorToggleConditionalBreakpoint
"
" allows for the variable evaluation popup to be displayed
" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
"
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval
"up/down the stack
nmap <LocalLeader><F11> <Plug>VimspectorUpFrame
nmap <LocalLeader><F12> <Plug>VimspectorDownFrame

"--     --"
"-- GIT --"
"--     --"
"
" Fugitive
nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gl :diffget //3<CR>
nmap <leader>ga :Git add .<CR>
nmap <leader>gc :Git commit<CR>
nmap <leader>gp :Git push<CR>

" git messenger
noremap <C-g> :GitMessenger<CR>
let g:git_messenger_no_default_mappings = v:true

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

"--      --"
"-- JAVA --"
"--      --"
"


"--            --""
"-- JAVASCRIPT --""
"--            --""
"

"--          --""
"-- MARKDOWN --""
"--          --""
"
"-- TABLE MODE --"
"
let g:table_mode_delete_row_map = "<leader>tdr"


"--      --"
"-- RUST --"
"--      --"
"

"--        --"
"-- SYNTAX --"
"--        --"
"

"--               --"
"-- TAG LANGUAGES --"
"--               --"
"
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

"--            --"
"-- TYPESCRIPT --"
"--            --"
"
augroup mygroup
	autocmd!
	" Setup formatexpr specified filetype(s).
	autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	" Update signature help on jump placeholder
	autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

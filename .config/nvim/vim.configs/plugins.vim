scriptencoding utf-8

let s:plugin_path = expand('<sfile>:p:h')

function! s:source(plugins) abort
	execute 'source ' . s:plugin_path . '/plugins/' . a:plugins . '.vim'
endfunction

call plug#begin('~/local/share/nvim/plugged')
	call s:source('completion')
	call s:source('extras')
	call s:source('file-explorer')
	call s:source('programming')
	call s:source('search')
	call s:source('themes')
	call s:source('utils')
call plug#end()

delfunction s:source
unlet s:plugin_path

let s:plugin_path = expand('<sfile>:p:h')
let s:config_path = expand('<sfile>:p:h')
let s:source_plugin_list = [
	\ 'completion',
	\ 'extras',
	\ 'file-explorer',
	\ 'programming',
	\ 'search',
	\ 'themes',
	\ 'utils',
\]
let s:source_gen_list = [
	\ 'code-generator',
	\ 'general',
	\ 'personal-scripts',
\]

call plug#begin('~/local/share/nvim/plugged')

	for s:item in s:source_plugin_list
		exec 'source ' . s:plugin_path . '/vim.configs/plugins/' . s:item . '.vim'
	endfor
call plug#end()

for s:item in s:source_plugin_list
	exec 'source ' . s:plugin_path . '/vim.configs/plugins.config/' . s:item . '.vim'
endfor

for s:item in s:source_gen_list
	exec 'source ' . s:plugin_path . '/vim.configs/' . s:item . '.vim'
endfor

unlet s:plugin_path
unlet s:config_path
unlet s:source_plugin_list
unlet s:source_gen_list

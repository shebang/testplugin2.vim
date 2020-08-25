let s:save_cpo = &cpo
set cpo&vim

scriptencoding utf-8

if &cp || v:version < 802 || (exists('g:loaded_testplugin2') && g:loaded_testplugin2)
  finish
endif

let g:loaded_testplugin2 = 1

let g:testplugin2_conf_var1 =
      \ get( g:, 'testplugin2_conf_var1', 'Val1' )

let g:testplugin2_conf_var2 =
      \ get( g:, 'testplugin2_conf_var2', 'Val2' )



function TestPlugin2Func()
  echom 'work done...'
endfunction

command! -bar TestPlugin2Cmd  call TestPlugin2Func()


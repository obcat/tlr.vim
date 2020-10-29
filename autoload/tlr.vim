" Maintainer: obcat <obcat@icloud.com>
" License:    MIT License

let s:save_cpo = &cpo
set cpo&vim


function! tlr#down() abort
  if winnr() != winnr('j')
    resize +1
  else
    call win_execute(win_getid(winnr('k')), 'resize +1')
  endif
endfunction

function! tlr#up() abort
  if winnr() != winnr('j') || winnr() == winnr('k')
    resize -1
  else
    resize +1
  endif
endfunction

function! tlr#left() abort
  if winnr() != winnr('l')
    vertical resize -1
  else
    call win_execute(win_getid(winnr('h')), 'vertical resize -1')
  endif
endfunction

function! tlr#right() abort
  if winnr() != winnr('l')
    vertical resize +1
  else
    vertical resize -1
  endif
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo

" Maintainer: obcat <obcat@icloud.com>
" License:    MIT License

let s:save_cpo = &cpo
set cpo&vim


function! s:has_win(dir) abort
  return winnr() != winnr(a:dir)
endfunction


function! tlr#down() abort
  if s:has_win('j')
    resize +1
  else
    call win_execute(win_getid(winnr('k')), 'resize +1')
  endif
endfunction

function! tlr#up() abort
  if s:has_win('j') || !s:has_win('k')
    resize -1
  else
    resize +1
  endif
endfunction

function! tlr#left() abort
  if s:has_win('l')
    vertical resize -1
  else
    call win_execute(win_getid(winnr('h')), 'vertical resize -1')
  endif
endfunction

function! tlr#right() abort
  if s:has_win('l')
    vertical resize +1
  else
    vertical resize -1
  endif
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo

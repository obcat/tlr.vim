" Maintainer: obcat <obcat@icloud.com>
" License:    MIT License

let s:save_cpo = &cpo
set cpo&vim


let g:tlr_resize_steps = get(g:, 'tlr_resize_steps', 1)


function! s:has_win(dir) abort
  return winnr() != winnr(a:dir)
endfunction


function! tlr#down() abort
  if s:has_win('j')
    exe 'resize +' . g:tlr_resize_steps
  else
    call win_execute(win_getid(winnr('k')), 'resize +' . g:tlr_resize_steps)
  endif
endfunction

function! tlr#up() abort
  if s:has_win('j') || !s:has_win('k')
    exe 'resize -' . g:tlr_resize_steps
  else
    exe 'resize +' . g:tlr_resize_steps
  endif
endfunction

function! tlr#left() abort
  if s:has_win('l')
    exe 'vertical resize -' . g:tlr_resize_steps
  else
    call win_execute(win_getid(winnr('h')), 'vertical resize -' . g:tlr_resize_steps)
  endif
endfunction

function! tlr#right() abort
  if s:has_win('l')
    exe 'vertical resize +' . g:tlr_resize_steps
  else
    exe 'vertical resize -' . g:tlr_resize_steps
  endif
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo

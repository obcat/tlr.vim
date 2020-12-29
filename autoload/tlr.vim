" Maintainer: obcat <obcat@icloud.com>
" License:    MIT License


let g:tlr_resize_steps = get(g:, 'tlr_resize_steps', 1)


function! tlr#down() abort
  if s:has_win('j')
    exe 'resize +'..g:tlr_resize_steps
  else
    exe winnr('k')..'resize +'..g:tlr_resize_steps
  endif
endfunction

function! tlr#up() abort
  if s:has_win('j') || !s:has_win('k')
    exe 'resize -'..g:tlr_resize_steps
  else
    exe 'resize +'..g:tlr_resize_steps
  endif
endfunction

function! tlr#left() abort
  if s:has_win('l')
    exe 'vertical resize -'..g:tlr_resize_steps
  else
    exe 'vertical '..winnr('h')..'resize -'..g:tlr_resize_steps
  endif
endfunction

function! tlr#right() abort
  if s:has_win('l')
    exe 'vertical resize +'..g:tlr_resize_steps
  else
    exe 'vertical resize -'..g:tlr_resize_steps
  endif
endfunction


function! s:has_win(dir) abort
  return winnr() != winnr(a:dir)
endfunction

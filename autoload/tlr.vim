" Maintainer: obcat <obcat@icloud.com>
" License:    MIT License

let s:save_cpo = &cpo
set cpo&vim


let s:num_of_cells_for_res = get(g:, 'tlr_num_of_cells_for_res', 1)


function! s:has_win(dir) abort
  return winnr() != winnr(a:dir)
endfunction


function! tlr#down() abort
  if s:has_win('j')
    exe 'resize +' . s:num_of_cells_for_res
  else
    call win_execute(win_getid(winnr('k')), 'resize +' . s:num_of_cells_for_res)
  endif
endfunction

function! tlr#up() abort
  if s:has_win('j') || !s:has_win('k')
    exe 'resize -' . s:num_of_cells_for_res
  else
    exe 'resize +' . s:num_of_cells_for_res
  endif
endfunction

function! tlr#left() abort
  if s:has_win('l')
    exe 'vertical resize -' . s:num_of_cells_for_res
  else
    call win_execute(win_getid(winnr('h')), 'vertical resize -' . s:num_of_cells_for_res)
  endif
endfunction

function! tlr#right() abort
  if s:has_win('l')
    exe 'vertical resize +' . s:num_of_cells_for_res
  else
    exe 'vertical resize -' . s:num_of_cells_for_res
  endif
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo

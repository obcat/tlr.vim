" Maintainer: obcat <obcat@icloud.com>
" License:    MIT License

let s:save_cpo = &cpo
set cpo&vim


if exists('g:loaded_tlr')
  finish
endif
let g:loaded_tlr = 1

nnoremap <silent> <Plug>(tlr-down)  :<C-u>call tlr#down()<CR>
nnoremap <silent> <Plug>(tlr-up)    :<C-u>call tlr#up()<CR>
nnoremap <silent> <Plug>(tlr-left)  :<C-u>call tlr#left()<CR>
nnoremap <silent> <Plug>(tlr-right) :<C-u>call tlr#right()<CR>


let &cpo = s:save_cpo
unlet s:save_cpo

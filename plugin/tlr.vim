if exists('g:loaded_tlr')
  finish
endif
let g:loaded_tlr = 1

command! TlrDown  call tlr#down()
command! TlrUp    call tlr#up()
command! TlrLeft  call tlr#left()
command! TlrRight call tlr#right()

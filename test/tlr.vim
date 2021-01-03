let s:suite = themis#suite('tlr')
let s:assert = themis#helper('assert')


function s:suite.test_single_up_down()
  let wh = winheight(0)
  exe "normal \<C-Up>"
  call s:assert.equals(winheight(0), wh - g:tlr_resize_steps)
  exe "normal \<C-Up>"
  call s:assert.equals(winheight(0), wh - 2 * g:tlr_resize_steps)
  exe "normal \<C-Down>"
  call s:assert.equals(winheight(0), wh - g:tlr_resize_steps)
  exe "normal \<C-Down>"
  call s:assert.equals(winheight(0), wh)
endfunction


function s:suite.test_multi_up_down()
  split

  wincmd t
  let [wh1, wh2] = [winheight(1), winheight(2)]
  exe "normal \<C-Up>"
  call s:assert.equals(winheight(1), wh1 - g:tlr_resize_steps)
  call s:assert.equals(winheight(2), wh2 + g:tlr_resize_steps)
  exe "normal \<C-Up>"
  call s:assert.equals(winheight(1), wh1 - 2 * g:tlr_resize_steps)
  call s:assert.equals(winheight(2), wh2 + 2 * g:tlr_resize_steps)
  exe "normal \<C-Down>"
  call s:assert.equals(winheight(1), wh1 - g:tlr_resize_steps)
  call s:assert.equals(winheight(2), wh2 + g:tlr_resize_steps)
  exe "normal \<C-Down>"
  call s:assert.equals(winheight(1), wh1)
  call s:assert.equals(winheight(2), wh2)

  wincmd b
  let [wh1, wh2] = [winheight(1), winheight(2)]
  exe "normal \<C-Up>"
  call s:assert.equals(winheight(1), wh1 - g:tlr_resize_steps)
  call s:assert.equals(winheight(2), wh2 + g:tlr_resize_steps)
  exe "normal \<C-Up>"
  call s:assert.equals(winheight(1), wh1 - 2 * g:tlr_resize_steps)
  call s:assert.equals(winheight(2), wh2 + 2 * g:tlr_resize_steps)
  exe "normal \<C-Down>"
  call s:assert.equals(winheight(1), wh1 - g:tlr_resize_steps)
  call s:assert.equals(winheight(2), wh2 + g:tlr_resize_steps)
  exe "normal \<C-Down>"
  call s:assert.equals(winheight(1), wh1)
  call s:assert.equals(winheight(2), wh2)

  only
endfunction


function! s:suite.test_multi_left_right()
  vsplit

  wincmd t
  let [ww1, ww2] = [winwidth(1), winwidth(2)]
  exe "normal \<C-Left>"
  call s:assert.equals(winwidth(1), ww1 - g:tlr_resize_steps)
  call s:assert.equals(winwidth(2), ww2 + g:tlr_resize_steps)
  exe "normal \<C-Left>"
  call s:assert.equals(winwidth(1), ww1 - 2 * g:tlr_resize_steps)
  call s:assert.equals(winwidth(2), ww2 + 2 * g:tlr_resize_steps)
  exe "normal \<C-Right>"
  call s:assert.equals(winwidth(1), ww1 - g:tlr_resize_steps)
  call s:assert.equals(winwidth(2), ww2 + g:tlr_resize_steps)
  exe "normal \<C-Right>"
  call s:assert.equals(winwidth(1), ww1)
  call s:assert.equals(winwidth(2), ww2)

  wincmd b
  let [ww1, ww2] = [winwidth(1), winwidth(2)]
  exe "normal \<C-Left>"
  call s:assert.equals(winwidth(1), ww1 - g:tlr_resize_steps)
  call s:assert.equals(winwidth(2), ww2 + g:tlr_resize_steps)
  exe "normal \<C-Left>"
  call s:assert.equals(winwidth(1), ww1 - 2 * g:tlr_resize_steps)
  call s:assert.equals(winwidth(2), ww2 + 2 * g:tlr_resize_steps)
  exe "normal \<C-Right>"
  call s:assert.equals(winwidth(1), ww1 - g:tlr_resize_steps)
  call s:assert.equals(winwidth(2), ww2 + g:tlr_resize_steps)
  exe "normal \<C-Right>"
  call s:assert.equals(winwidth(1), ww1)
  call s:assert.equals(winwidth(2), ww2)

  only
endfunction

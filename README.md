# tlr.vim

![tlr](https://user-images.githubusercontent.com/64692680/96217376-69036d80-0fbd-11eb-9eb2-bdc9eb0e850b.gif)

This plugin provides the following commands:

```vim
:TlrDown
:TlrUp
:TlrLeft
:TlrRight
```

If you add the following settings to vimrc, you can resize the window as shown in the Gif above:

```vim
nnoremap <silent> <C-Down>  :TlrDown<CR>
nnoremap <silent> <C-Up>    :TlrUp<CR>
nnoremap <silent> <C-Left>  :TlrLeft<CR>
nnoremap <silent> <C-Right> :TlrRight<CR>
```

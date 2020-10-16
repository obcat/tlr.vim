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
noremap <silent> <C-Down>  :TlrDown<CR>
noremap <silent> <C-Up>    :TlrUp<CR>
noremap <silent> <C-Left>  :TlrLeft<CR>
noremap <silent> <C-Right> :TlrRight<CR>
```
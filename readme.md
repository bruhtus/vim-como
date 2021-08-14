# como.vim

Como is a plugin to copy or move one line into another line without cluttering the unnamed vim register (`"`). Como also took count, so Como not only copy or move line to above or below current line, Como also copy or move the line `[count]` above or below the current line. Also, Como save the previous position on jumplist so you can come back to previous line using `ctrl-o`.

## Demo

![vim-como-demo-gif](https://raw.githubusercontent.com/wiki/bruhtus/vim-como/vim-como-demo.gif?token=AKTPZ7IS3UGQNTPR2T7D6CDBEBOW6)

In the demo above:
1. Copy the current line above `}` in `vim()` function or below `echo "it works with vim"` by using `3<your-vim-como-copy-above-mapping>` because `}` is three line above the current line.
> If you want to copy the current line below the line but the line is above the current line, please use the count below target line instead of the count of the target line.
2. Copy the `echo "it works with vim"` line below `echo "it works with neovim"` line or above the `}` in `neovim()` function by using `5<your-vim-como-copy-below-mapping>` because `echo "it works with neovim"` is five line below the current line.
> If you want to copy the current line above the line but the line is below the current line, please use the count above target line instead of the count of the target line.
3. Move one of the `echo "this is vim-como demo"` in `vim()` function to below `function neovim()` or above the `echo "it works with vim"` in `neovim()` function by using `5<your-vim-como-move-below-mapping>` because `function neovim()` is five line below the current line.
> If you want to move the current line above the line but the line is below the current line, please use the count above target line instead of the count of the target line.

## Installation

Install this plugin using your favorite plugin manager, below is a few example of plugin manager that available:
- [vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'bruhtus/vim-como'
```
- [packer.nvim](https://github.com/wbthomason/packer.nvim)
```vim
use 'bruhtus/vim-como'
```
- [minpac](https://github.com/k-takata/minpac)
```vim
call minpac#add('bruhtus/vim-como')
```

## Usage

Como doesn't provide any keybinding, you can make your own keybinding with the four `<Plug>` mapping that como provide:
- `<Plug>(Como-copy-above)`
- `<Plug>(Como-copy-below)`
- `<Plug>(Como-move-above)`
- `<Plug>(Como-move-below)`

For example: <br>
```vim
nmap <leader>k <Plug>(Como-move-above)
nmap <leader>j <Plug>(Como-move-below)
nmap <leader>h <Plug>(Como-copy-above)
nmap <leader>l <Plug>(Como-copy-below)
```

## Credits

- [vim-galore](https://github.com/mhinz/vim-galore).

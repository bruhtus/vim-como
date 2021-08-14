# como.vim

Como is a plugin to copy or move one line into another line without cluttering the unnamed vim register (`"`). Como also took count, so Como not only copy or move line to above or below current line, Como also copy or move the line `[count]` above or below the current line.

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

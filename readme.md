# como.vim

Como is a plugin to copy or move one line into another line without cluttering the unnamed vim register (`"`). Como also took count, so Como not only copy or move line to above or below current line, Como also copy or move the line `[count]` above or below the current line. Also, Como save the previous position on jumplist so you can come back to previous line using `CTRL-O` (Como did not save the jumplist if the user only copy or move the current line above or below the current line, not using count).

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

Como doesn't provide any keybinding, you can make your own keybinding with the four `<Plug>` mapping that Como provide:
- `<Plug>(Como-copy-above)`
- `<Plug>(Como-copy-below)`
- `<Plug>(Como-move-above)`
- `<Plug>(Como-move-below)`

For example: <br>
```vim
nmap <leader>h <Plug>(Como-copy-above)
nmap <leader>l <Plug>(Como-copy-below)
nmap <leader>k <Plug>(Como-move-above)
nmap <leader>j <Plug>(Como-move-below)
```

Please keep in mind that the `copy-above` or `move-above` mapping is for the above current line, and `copy-below` or `move-below` mapping is for the below current line. So, let's say you want to move or copy the current line above the line below the current line, then look to the count above those target line. Watch the demo over and over again, and if you still confused, please ask by opening new issue with title `[Question] your-question` or maybe try it out yourself.

If you did not use count, Como will copy the current line below or above the current line and move the current line above or below one line from the current line.

## FAQ

- Why use this kind of mapping?

> This kind of mapping is for simplicity and consistency, also I'm not sure how to tell vim to move or copy using count to above or below the target line without adding more mapping. Imagine you need to make 4 more mapping because of specific above or below line, ugh. If you have some kind of solution, please don't hesitate to contact me by opening new issue or create PR.

- What's the difference between this and `vim-unimpaired`?

> I made this before I knew about `vim-unimpaired`. `vim-unimpaired` already have the moving feature but it lack the copy feature (there's a PR but haven't got merged, you can take a look [here](https://github.com/tpope/vim-unimpaired/pull/138)). Maybe you can say that `vim-como` is the simplified version of `vim-unimpaired` and with less battle-tested. For example, `vim-como` probably won't be able to copy or move with fold. I haven't tested it yet and I'm not sure how to make that works.

- Why the indentation inconsistent?

> For the indentation, this plugin use `==` Normal mode command. According to one of [tpope's comment](https://github.com/tpope/vim-unimpaired/issues/23#issuecomment-10262005), indenting algorithms have bugs and you can't really count on `=`. I don't have any alternative at the moment.

## Credits

- [vim-galore](https://github.com/mhinz/vim-galore).

## Related

- [vim-unimpaired](https://github.com/tpope/vim-unimpaired).

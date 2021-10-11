" File: plugin/como.vim
" Maintainer: Robertus Diawan Chris <https://github.com/bruhtus>
" License:
" Copyright (c) Robertus Diawan Chris. Distributed under the same terms as Vim itself.
" See :h license
"
" Description:
" copy or move one line with a count and without cluttering vim register

if exists('g:loaded_como') || exists(':lockmarks') != 2
  finish
endif

let g:loaded_como = 1

nnoremap <expr> <silent> <Plug>(Como-copy-above)
      \ (v:count > 0 ? "m'" . v:count : '') . ":<C-u>execute 't -1-'. v:count<CR>=="

nnoremap <expr> <silent> <Plug>(Como-copy-below)
      \ (v:count > 0 ? "m'" . v:count : '') . ":<C-u>execute 't +'. v:count<CR>=="

nnoremap <expr> <silent> <Plug>(Como-move-above)
      \ (v:count1 > 1 ? "m'" . v:count1 : '')
      \ . ":<C-u>execute 'lockmarks move -1-' . v:count1<CR>=="

nnoremap <expr> <silent> <Plug>(Como-move-below)
      \ (v:count1 > 1 ? "m'" . v:count1 : '')
      \ . ":<C-u>execute 'lockmarks move +' . v:count1<CR>=="

" Multi-Cursor settings custom
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-m>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-m>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'"


lua require('initialize')
lua << EOF
  require('glow').setup({
   install_path = "/opt/homebrew/Cellar/glow/1.5.1/bin"
  })
EOF

function! Exec_on_term(cmd, pos)
  exec "normal! ma"
  let backup_a=@a
  let backup_b=@b
  let sep = "------"
  exec "normal! ?".sep."\<CR>jV/".sep."\<CR>k\"ay"
  exec "normal! /".sep."\<CR>jO"
  if a:pos == "next"
      exec "normal! O".sep
      exec "normal! jddkko"
  endif
  exec "normal! V/".sep."\<CR>kdO"
  let @b=system(@a)
  execute "put b"
  execute "normal! ?".sep."\<CR>jdd"
  exec "normal 'a"
  let @b=backup_b
  let @a=backup_a
endfunction
nnoremap <Leader>dr :call Exec_on_term("normal", "curr")<CR>
vnoremap <F6> :<c-u>call Exec_on_term("visual", "curr")<CR>
nnoremap <Leader>dn :call Exec_on_term("normal", "next")<CR>

inoremap <silent><expr> <tab> "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

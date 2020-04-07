fun! FzfOmniFiles()
  let is_git = system('git status')
  if v:shell_error
    :Files
  else
    :GitFiles
  endif
endfun

"  File検索
nnoremap <silent> <C-p> :call FzfOmniFiles()<CR>
"  grep
nnoremap <silent> <C-g> :Rg<Space>
"  command一覧
nnoremap <leader><leader> :Commands<CR>
" Buffer内検索
nnoremap <C-b> :Buffers<CR>


" 新しいタブで開く
let g:fzf_action = {
\ 'ctrl-o': 'vs'
\ }

" preview setting
fzf --height 50% --layout reverse --info inline --border \
    --preview 'file {}' --preview-window down:1:noborder \
    --color 'fg:#bbccdd,fg+:#ddeeff,bg:#334455,preview-bg:#223344,border:#778899'

command! -bang -nargs=* Rg
\ call fzf#vim#grep(
\ 'rg --column --line-number --hidden --ignore-case --no-heading --color=always '.shellescape(<q-args>),
\ 1,
\ fzf#vim#with_preview({'options': '--delimiter : --nth 4.. --no-sort'}, 'right:50%', '?'),
\ <bang>0)

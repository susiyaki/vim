let g:coc_global_extensions = [
  \  'coc-tsserver'
  \, 'coc-tslint'
  \, 'coc-html'
  \, 'coc-css'
  \, 'coc-yank'
  \, 'coc-highlight'
  \, 'coc-snippets'
  \, 'coc-prettier'
  \, 'coc-lists'
  \, 'coc-json'
  \, 'coc-solargraph'
  \, 'coc-rls'
  \, 'coc-python'
  \]


" 画面左の警告、エラーの色
highlight CocErrorSign ctermfg=15 ctermbg=227
highlight CocWarningSign ctermfg=0 ctermbg=172

" lightline
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

" キーマップ
" ノーマルモード
" List
nmap <silent> <space>l :<C-u>CocList<cr>
" Definition
nmap <silent> <space>d <Plug>(coc-definition)
" References
nmap <silent> <space>c <Plug>(coc-references)
" Rename
nmap <silent> <space>r <Plug>(coc-rename)
" Format
nmap <silent> <space>f <Plug>(coc-format)

" prettier setting
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#single_quote = 'false'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#arrow_parens = 'avoid'
let g:prettier#config#jsx_bracket_same_line = 'true'
let g:prettier#config#trailing_comma = 'none'

" coc-yank
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

" coc-snippets
imap <C-k> <Plug>(coc-snippets-expand-jump)
let g:coc_snippet_next = '<c-k>'
let g:coc_snippet_prev = '<c-j>'

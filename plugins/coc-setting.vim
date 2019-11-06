" 画面左の警告、エラーの色
highlight CocErrorSign ctermfg=15 ctermbg=227
highlight CocWarningSign ctermfg=0 ctermbg=172

" lightline
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction'
      \ },
      \ }

" キーマップ
" ノーマルモード
" List
nmap <silent> gl :<C-u>CocList<cr>
" Definition
nmap <silent> gd <Plug>(coc-definition)
" References
nmap <silent> gr <Plug>(coc-references)
" Rename
nmap <silent> <space>r <Plug>(coc-rename)
" " Format
" nmap <silent> <space>fmt <Plug>(coc-format)

" 保存時整形
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html :CocCommand prettier.formatFile
" prettier setting
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#single_quote = 'false'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#arrow_parens = 'avoid'
let g:prettier#config#jsx_bracket_same_line = 'true'
let g:prettier#config#trailing_comma = 'none'

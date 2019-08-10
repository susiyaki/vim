if !exists('g:tcomment_types')
  let g:tcomment_types = {}
endif
let g:tcomment_types = {
      \'eruby_surround' : "<%%# %s %%>",
\}

function! SetErubyMapping2()
  nmap <buffer> sc :TCommentAs eruby_surround_minus<CR>
endfunction

" erubyのときだけ設定を追加
au FileType eruby call SetErubyMapping2()

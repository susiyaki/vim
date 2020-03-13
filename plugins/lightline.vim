let g:lightline = {
    \ 'colorscheme': 'deus',
    \ 'active': {
    \   'left': [ ['mode', 'paste'],
    \             [ 'readonly', 'filename', 'modified'],
      \           [ 'cocstatus', 'currentfunction' ]
    \           ],
    \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'],
    \              [ 'filetype' ] ]
    \ },
    \ 'component': {
    \   'readonly': '%{&readonly?"[readonly]":""}',
    \ },
    \ 'component_function': {
    \   'filename': 'LightlineFilename',
    \   'fileformat': 'LightlineFileformat',
    \   'filetype': 'LightlineFiletype',
    \   'fileencoding': 'LightlineFileencoding',
    \   'mode': 'LightlineMode',
    \   'cocstatus': 'coc#status',
    \   'currentfunction': 'CocCurrentFunction'
    \ },
    \ }

  function! LightlineFilename()
  let fname = expand('%:t')
  return '' != expand('%') ? expand('%') : '[No Name]'
  endfunction

  function! LightlineFileformat()
    return winwidth(0) > 70 ? &fileformat : ''
  endfunction

  function! LightlineFiletype()
    return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
  endfunction

  function! LightlineFileencoding()
    return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
  endfunction

  function! LightlineMode()
    let fname = expand('%:t')
    return winwidth(0) > 60 ? lightline#mode() : ''
  endfunction

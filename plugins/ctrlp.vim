" # ctrlpのキーマッピングを <C-p>からspに変更
" # yankround.vimで<C-p>を使用しているため，衝突回避
let g:ctrlp_map = '<nop>'
" nnoremap sp :CtrlP ~/<CR>
" 緊急措置
nnoremap <silent> sg :CtrlPMRUFiles<CR>

" # キャッシュを使用して検索を高速化
let g:ctrlp_use_caching = 1
" # vim終了時にキャッシュをクリアしない
let g:ctrlp_clear_cache_on_exit = 0
" 遅延設定
let g:ctrlp_lazy_update = 1
" ルートパスと認識させるためのファイル
let g:ctrlp_root_markers = ['.ctrlp']
" regexpモードで起動
let g:ctrlp_regexp = 1
" 無視するディレクトリ
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
" キャッシュ先
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
" pt使用
if executable('pt')
  let g:ctrlp_user_command = 'pt %s -l --nocolor -g '
endif
" CtrlPのウィンドウ最大高さ
let g:ctrlp_match_window = 'bottom,order:ttb,max:20'

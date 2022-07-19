let s:save_cpo = &cpo
set cpo&vim

let s:color = ''

augroup portalaim
  au!
augroup END

function! portalaim#Aim(color = '') abort
  if ! exists('g:loaded_portal')
    echo 'First, you need to get the portal gun.'
    return
  endif

  let s:color =
    \ a:color !=# '' ? a:color :
    \ s:color ==# 'blue' ? 'orange' : 'blue'

  echon 'Aiming the portal gun ' s:color ' '
  execute 'echoh portal_' . s:color
  echon 'O'
  echoh Normal
  redraw

  let s:cursor = getpos('.')
  let s:readonly = &readonly
  set readonly
  au portalaim CursorMoved * ++once :call <SID>shoot()
  nnoremap <script> <silent> <CR> :<C-u>call <SID>shoot()<CR>
  nnoremap <script> <silent> <ESC> :<C-u>call <SID>cancel()<CR>
endfunction

function! s:shoot() abort
  let l:cur = getpos('.')
  let l:cur[0] = bufnr()
  call portal#shoot(s:color, l:cur)
  call setpos('.', s:cursor)
  call s:clear()
endfunction

function! s:cancel() abort
  call s:clear()
endfunction

function! s:clear() abort
  redraw
  echo ''
  let &readonly = s:readonly
  au! portalaim
  silent! nunmap <script> <CR>
  silent! nunmap <script> <ESC>
endfunction

let &cpo = s:save_cpo

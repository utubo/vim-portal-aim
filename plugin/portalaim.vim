if exists('g:loaded_portalaim')
	finish
endif
let g:loaded_portalaim = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=? -bar -complete=customlist,portal#_complete
			\ PortalAim call portalaim#Aim(<q-args>)

let &cpo = s:save_cpo

set notimeout

call plug#begin('~/.vim/plugged')

" {{{ Vim plugs
"
" Asthetics
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'glepnir/dashboard-nvim'

" }}} Vim plugs

call plug#end()

" {{{ theme-settings
" set background=light
" colorscheme gruvbox
colorscheme seoul256-light
set background=light

let t:is_transparent = 1                                                                    
" hi Normal guibg=#111111 ctermbg=black                                                       
hi Normal guibg=NONE ctermbg=NONE                                                           
let t:is_transparent = 1                                                                    


function Day()
	colorscheme seoul256-light
	set background=light
  hi Normal guibg=NONE ctermbg=NONE                                                           
  :! day
endfunction

function Dusk()
	colorscheme desert
	set background=light
  hi Normal guibg=NONE ctermbg=NONE                                                           
  :! day
endfunction

function Evening()
	colorscheme gruvbox
	set background=dark
  hi Normal guibg=NONE ctermbg=NONE                                                           
  :! night
endfunction

function Night()
	colorscheme gruvbox
	set background=dark
  hi Normal guibg=NONE ctermbg=NONE                                                           
  :! night
endfunction

command! Day call Day()
command! Dusk call Dusk()
command! Evening call Evening()
command! Night call Night()

" Set tab width to 2 columns
set tabstop=2
" Use 2 columns for indentation
set shiftwidth=2
" Use spaces when pressing <tab> key
set expandtab

let t:is_transparent = 0                                                                        
function! Toggle_transparent_background()                                                       
  if t:is_transparent == 0                                                                      
    hi Normal guibg=#111111 ctermbg=black                                                       
    let t:is_transparent = 1                                                                    
  else                                                                                          
    hi Normal guibg=NONE ctermbg=NONE                                                           
    let t:is_transparent = 0                                                                    
  endif                                                                                         
endfunction                                                                                     
nnoremap <C-x><C-t> :call Toggle_transparent_background()<CR>


" }}} theme-settings

" {{{ Config file fxs
"if (!exists('*Reload'))
"  function Reload() abort
"    " your path will probably be different
"    for f in split(glob('~/.config/nvim/autoload/*'), '\n')
"      exe 'source' f
"    endfor
"
"    source $MYVIMRC
"  endfunction
"endif
"nnoremap <silent> <Leader><Leader> :call SourceConfig()<cr>

if (!exists('*Reload'))
  function! Reload()
    source $MYVIMRC
  endfunction
endif

command! Config :e $MYVIMRC
command! Reload source $MYVIMRC
" command! Config call Config()
" }}} Config file fxs

" vim: set foldmethod=marker:

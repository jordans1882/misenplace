set notimeout

call plug#begin('~/.vim/plugged')

" {{{ Vim plugs
"
" Asthetics
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'glepnir/dashboard-nvim'

" Dark vim packages
if has('nvim')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" }}} Vim plugs


" {{{ Denite Config
" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction


" }}} Denite Config

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

" {{{ Basic bindings:
let maplocalleader = ","

" Tabs
noremap <localleader>tc :tabnew<CR>
noremap <localleader>th :tabprevious<CR>
noremap <localleader>tl :tabnext<CR>
noremap <localleader>td :tabclose<CR>

" Buffers
noremap <localleader>bb :Denite buffer<CR>
noremap <localleader>bn :bnext<CR>
noremap <localleader>bp :bnext<CR>


" Windows
noremap <localleader>wv :vsplit<CR>
noremap <localleader>ws :split<CR>
noremap <localleader>wh :wincmd h<CR>
noremap <localleader>wl :wincmd l<CR>
noremap <localleader>wj :wincmd j<CR>
noremap <localleader>wd :close<CR>


" }}} Basic bindings:

" vim: set foldmethod=marker:

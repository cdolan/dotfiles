let mapleader = ","

" Navigation {{{
nnoremap ; :
inoremap jk <esc>
inoremap kj <esc>
nnoremap B ^
nnoremap E $
" }}}

" Searching {{{
set showmatch
set incsearch
set hlsearch

nnoremap <leader><space> :nohlsearch<CR>
" }}}

" Folding {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

nnoremap <space> za
" }}}

" Modelines {{{
set modeline
set modelines=1
" }}}

" Languages {{{
augroup configgroup
	autocmd!

	autocmd BufEnter *.h setlocal filetype=c

	autocmd FileType ruby setlocal expandtab
	autocmd FileType ruby setlocal shiftwidth=2
	autocmd FileType ruby setlocal softtabstop=2
	autocmd FileType ruby setlocal tabstop=2

	autocmd BufRead,BufNewFile *mutt-* setlocal filetype=mail
	autocmd BufRead,BufNewFile *mutt-* setlocal tw=72
augroup END
" }}}

" Drawing {{{
set ttyfast
"set termguicolors

colorscheme space_vim_theme

let g:space_vim_transp_bg = 1

set background=dark
" }}}

" Backups {{{
set nobackup
set nowritebackup
set noswapfile
set viminfo=
" }}}

" Workflow {{{
function! Mutt()
	set readonly
	set filetype=git

	nnoremap i <esc>
	nnoremap q :quit!<CR>
endfunction
" }}}

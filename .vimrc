"====================DEFAULTS====================
set nocompatible
filetype off 
let mapleader = ","
syntax on
colorscheme molokai
set laststatus=2
set relativenumber
set number
set path+=**
set wildmenu
set t_Co=256
set t_ut=

"====================PLUGINS=====================   
set rtp+=~/.vim/bundle/Vundle.vim
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

call vundle#end()
filetype plugin on
filetype indent on

nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

nmap <up> ddkkp
nmap <down> ddp
nmap <left> :tabprevious<CR>
nmap <right> :tabnext<CR>

inoremap <SPACE><SPACE> <ESC>%%a

noremap <F7> :set expandtab!<CR>

nmap <C-n> :noh<CR>

imap <leader>{ {<CR>}<ESC>O

function! LatexGermanUmlaut()
	inoremap <buffer> ü {\"u}
	inoremap <buffer> Ü {\"U}
	inoremap <buffer> ä {\"a}
	inoremap <buffer> Ä {\"A}
	inoremap <buffer> ö {\"o}
	inoremap <buffer> Ö {\"O}
endfunction

function! LatexMaths()
	inoremap <buffer> <leader>f <ESC>?<SPACE><CR>:noh<CR>a\frac{<ESC>A}{}<ESC>i
	inoremap <buffer> => \Rightarrow
	inoremap <buffer> -> \rightarrow
endfunction

function! LatexGreekLetters()

	inoremap <buffer> <leader>a \alpha
	inoremap <buffer> <leader>el \epsilon
	inoremap <buffer> <leader>e \varepsilon
	inoremap <buffer> <leader>d \delta
	inoremap <buffer> <leader>b \beta
	inoremap <buffer> <leader>O \Omega
	inoremap <buffer> <leader>o \omega
	inoremap <buffer> <leader>u \mu
endfunction

function! VhdlArchitecture()
	let line = getline(".")
	let blub = setline("?") "hier nochmal in der :help weiter lesen.
endfunction

autocmd Filetype vhdl imap <buffer> <leader>a <ESC>biarchitecturex<SPACE><ESC>Aof<SPACE><ESC>?entity<CR>wyw/architecturex<CR>$p0exAis<CR>

function! SetupLatex()
	call LatexGermanUmlaut()
	call LatexMaths()
	call LatexGreekLetters()
	inoremap <buffer> <leader>beg \begin{document}<CR><CR><CR>\end{document}<ESC>kO
endfunction

autocmd Filetype tex,latex call SetupLatex()

autocmd Filetype vhdl imap <buffer> <leader>e <ESC>bientity<SPACE><ESC>ea<SPACE>is

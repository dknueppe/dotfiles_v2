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
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*


"====================PLUGINS=====================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'valloric/youcompleteme'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
"let g:airline_powerline_fonts = 1
Plugin 'c.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

call vundle#end()
filetype plugin on
filetype indent on
"====================MAPPINGS====================
" Convinience
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

" Arrow Keys
nmap <up> ddkkp
nmap <down> ddp
nmap <left> :tabprevious<CR>
nmap <right> :tabnext<CR>


noremap <F7> :set expandtab!<CR>

nmap <C-n> :noh<CR>

imap <leader>{ {<CR>}<ESC>O
imap <leader>cmain <ESC>:-1read/home/daniel/.vim/templates/main.c<CR>/;<CR>ji<Tab>

function! LatexGermanUmlaut()
	inoremap <buffer> ü {\"u}
        inoremap <buffer> Ü {\"U}
        inoremap <buffer> ä {\"a}
        inoremap <buffer> Ä {\"A}
        inoremap <buffer> ö {\"o}
        inoremap <buffer> Ö {\"O}
endfunction
	
autocmd Filetype tex,latex call LatexGermanUmlaut()


"autocmd Filetype tex,latex inoremap <buffer> ü {\"u}
"autocmd Filetype tex,latex inoremap <buffer> Ü {\"U}
"autocmd Filetype tex,latex inoremap <buffer> ä {\"a}
"autocmd Filetype tex,latex inoremap <buffer> Ä {\"A}
"autocmd Filetype tex,latex inoremap <buffer> ö {\"o}
"autocmd Filetype tex,latex inoremap <buffer> Ö {\"O}
autocmd Filetype tex,latex inoremap <buffer> <leader>f <ESC>?<SPACE><CR>:noh<CR>a\frac{<ESC>A}{}<ESC>i
autocmd Filetype tex,latex inoremap <buffer> => \Rightarrow
autocmd Filetype tex,latex inoremap <buffer> -> \rightarrow
autocmd Filetype tex,latex inoremap <buffer> <leader>a \alpha
autocmd Filetype tex,latex inoremap <buffer> <leader>el \epsilon
autocmd Filetype tex,latex inoremap <buffer> <leader>e \varepsilon
autocmd Filetype tex,latex inoremap <buffer> <leader>d \delta
autocmd Filetype tex,latex inoremap <buffer> <leader>b \beta
autocmd Filetype tex,latex inoremap <buffer> <leader>O \Omega
autocmd Filetype tex,latex inoremap <buffer> <leader>o \omega
autocmd Filetype tex,latex inoremap <buffer> <leader>u \mu
autocmd Filetype tex,latex inoremap <buffer> <SPACE><SPACE> <ESC>%%a
autocmd Filetype tex,latex inoremap <buffer> <leader>beg \begin{document}<CR><CR><CR>\end{document}<ESC>kO

autocmd Filetype vhdl imap <buffer> <leader>e <ESC>bientity<SPACE><ESC>ea<SPACE>is
autocmd Filetype vhdl imap <buffer> <leader>a <ESC>biarchitecturex<SPACE><ESC>Aof<SPACE><ESC>?entity<CR>wyw/architecturex<CR>$p0exAis<CR>

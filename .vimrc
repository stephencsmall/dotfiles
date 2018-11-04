if empty(glob("~/.vim/autoload/plug.vim"))
	silent! execute '!curl --create-dirs -fsSLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * silent! PlugInstall
endif

silent! if plug#begin()
	Plug 'airblade/vim-gitgutter'
	Plug 'elzr/vim-json'
	Plug 'scrooloose/nerdtree'
	Plug 'scrooloose/syntastic'
	Plug 'scrooloose/nerdcommenter'
	Plug 'vim-airline/vim-airline'
	Plug 'tpope/vim-surround'
	Plug 'rizzatti/dash.vim'
	call plug#end()
endif

if empty(glob("~/.vim/autoload/plug.vim"))
	silent! execute '!curl --create-dirs -fsSLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * silent! PlugInstall
endif

silent! if plug#begin()
	Plug 'airblade/vim-gitgutter'
	call plug#end()
endif

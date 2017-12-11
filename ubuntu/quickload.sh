# Pull in Vim Config Files
rm -rf ~/.vim/bundle ;
mkdir -p ~/.vim/autoload ~/.vim/bundle ;
mkdir -p ~/.config/nvim;
cp init.vim ~/.config/nvim;
cp .nvimrc ~;

curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim ;
cd ~/.vim/bundle ;

git clone https://github.com/sheerun/vim-polyglot ~/.vim/bundle/vim-polyglot ;
git clone https://github.com/bronson/vim-trailing-whitespace ~/.vim/bundle/vim-trailing-whitespace ;
git clone https://github.com/flazz/vim-colorschemes ~/.vim/bundle/vim-colorschemes ;
git clone https://github.com/mtscout6/syntastic-local-eslint.vim ~/.vim/bundle/syntastic-local-eslint ;
git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/nerdtree ;
git clone https://github.com/jiangmiao/auto-pairs ~/.vim/bundle/auto-pairs ;
git clone https://github.com/kien/ctrlp.vim ~/.vim/bundle/ctrlp ;
git clone https://github.com/eslint/eslint ~/.vim/bundle/eslint ;
git clone https://github.com/tomasr/molokai ~/.vim/bundle/molokai ;
git clone https://github.com/scrooloose/nerdcommenter ~/.vim/bundle/nerdcommenter ;
git clone https://github.com/ervandew/supertab ~/.vim/bundle/supertab ;
git clone https://github.com/scrooloose/syntastic ~/.vim/bundle/syntastic ;
git clone https://github.com/tomtom/tlib_vim ~/.vim/bundle/tlib_vim ;
git clone https://github.com/marcweber/vim-addon-mw-utils ~/.vim/bundle/vim-addon-mw-utils ;
git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline ;
git clone https://github.com/craigemery/vim-autotag ~/.vim/bundle/vim-autotag ;
git clone https://github.com/tpope/vim-fugitive ~/.vim/bundle/vim-fugitive ;
git clone https://github.com/airblade/vim-gitgutter ~/.vim/bundle/vim-gitgutter ;
git clone https://github.com/tpope/vim-sensible ~/.vim/bundle/vim-sensible ;
git clone https://github.com/garbas/vim-snipmate ~/.vim/bundle/vim-snipmate ;
git clone https://github.com/honza/vim-snippets ~/.vim/bundle/vim-snippets ;
git clone https://github.com/shougo/deoplete.nvim ~/.vim/bundle/deoplete ;

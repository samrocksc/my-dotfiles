#Move the config files
cp -R .oh-my-zsh ~ &
cp .eslintrc .vimrc .zshrc .ctags ~ &
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim &&
npm i -g eslint estraverse estraverse-fb eslint-plugin-react babel-eslint &
mkdir ~/.vim/autoload &
mkdir ~/.vim/bundle &
cd ~/.vim/bundle &
git clone https://github.com/scrooloose/nerdtree &
git clone https://github.com/jiangmiao/auto-pairs &
git clone https://github.com/kien/ctrlp.vim &
git clone https://github.com/eslint/eslint &
git clone https://github.com/tomasr/molokai &
git clone https://github.com/scrooloose/nerdcommenter &
git clone https://github.com/ervandew/supertab &
git clone https://github.com/scrooloose/syntastic &
git clone https://github.com/tomtom/tlib_vim &
git clone https://github.com/marcweber/vim-addon-mw-utils &
git clone https://github.com/bling/vim-airline &
git clone https://github.com/craigemery/vim-autotag &
git clone https://github.com/tpope/vim-fugitive &
git clone https://github.com/airblade/vim-gitgutter &
git clone https://github.com/pangloss/vim-javascript &
git clone https://github.com/maksimr/vim-jsbeautify &
git clone https://github.com/tpope/vim-markdown &
git clone https://github.com/tpope/vim-sensible &
git clone https://github.com/garbas/vim-snipmate &
git clone https://github.com/honza/vim-snippets &
git clone https://github.com/bronson/vim-trailing-whitespace &
git clone https://github.com/mxw/vim-jsx

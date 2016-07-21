#Move the config files
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
npm i -g eslint estraverse estraverse-fb eslint-plugin-react babel-eslint &
cp .eslintrc .vimrc .zshrc .ctags .tmux.conf ~ &
mkdir -p ~/.vim/autoload ~/.vim/bundle &
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim &
cd ~/.vim/bundle &
git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/ &
git clone https://github.com/jiangmiao/auto-pairs ~/.vim/bundle/ &
git clone https://github.com/kien/ctrlp.vim ~/.vim/bundle/ &
git clone https://github.com/eslint/eslint ~/.vim/bundle/ &
git clone https://github.com/tomasr/molokai ~/.vim/bundle/ &
git clone https://github.com/scrooloose/nerdcommenter ~/.vim/bundle/ &
git clone https://github.com/ervandew/supertab ~/.vim/bundle/ &
git clone https://github.com/scrooloose/syntastic ~/.vim/bundle/ &
git clone https://github.com/tomtom/tlib_vim ~/.vim/bundle/ &
git clone https://github.com/marcweber/vim-addon-mw-utils ~/.vim/bundle/ &
git clone https://github.com/bling/vim-airline ~/.vim/bundle/ &
git clone https://github.com/craigemery/vim-autotag ~/.vim/bundle/ &
git clone https://github.com/tpope/vim-fugitive ~/.vim/bundle/ &
git clone https://github.com/airblade/vim-gitgutter ~/.vim/bundle/ &
git clone https://github.com/pangloss/vim-javascript ~/.vim/bundle/ &
git clone https://github.com/maksimr/vim-jsbeautify ~/.vim/bundle/ &
git clone https://github.com/tpope/vim-markdown ~/.vim/bundle/ &
git clone https://github.com/tpope/vim-sensible ~/.vim/bundle/ &
git clone https://github.com/garbas/vim-snipmate ~/.vim/bundle/ &
git clone https://github.com/honza/vim-snippets ~/.vim/bundle/ &
git clone https://github.com/bronson/vim-trailing-whitespace ~/.vim/bundle/ &
git clone https://github.com/mxw/vim-jsx ~/.vim/bundle/

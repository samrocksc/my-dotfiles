# Sets up NPM
mkdir ~/.npm-global;
npm config set prefix '~/.npm-global';
export PATH=~/.npm-global/bin:$PATH;
source ~/.profile;
npm i -g eslint estraverse estraverse-fb eslint-plugin-react babel-eslint;

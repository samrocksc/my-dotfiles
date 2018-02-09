# My Dot Files
---

They're awesome right?  Just remember that everything I'm making here is completely opinionated.  The good news is this is the source, and you can change whatever you want!! I will take pull requests for anything you want to add as long as it is tested.  I'll probably start poking around with the other 3 more popular flavors of Linux.

**Strong Opinions Of Note**

*  I've used linux for a long time as an end user, and I personally find Ubuntu to be my preference, so you may find some very Ubuntu leaning configs.
*  For the Keyboard loaders, they are just a collection of my favorite [xmodmap configs](https://wiki.archlinux.org/index.php/xmodmap).
*  I use [Digital Ocean](https://www.digitalocean.com/) Ubuntu droplets for my VPS(even to the extent of working from them.  I also use mosh for almost all setups.
*  Almost every user reading this should understand how to install Git on their system.
*  I really like (https://github.com/square/maximum-awesome)[maximum-awesome], but I disagree about using `rake` to install anything outside of ruby.
*  I like using [nodesource](https://github.com/nodesource/distributions) to install nodejs, and I also like node.js.  You can do whatever you want outside of that.

## Requirements
---

### MacOS:

- Xcode
- Brew
- MacOS
- Git

### Linux:

####vim setup
I am currently using vim-plug:

1. `cd ubuntu/` use this folder
2. `./apps.sh` install apps needed
3. `vim` Open vim
4. `:PlugInstall` install vim-plug plugins
5. `:UpdateRemotePlugins` update deoplete
6. `./setupnpm.sh` update permissions for global installs with npm

- Apt(probably will have it).
- Debian/Ubuntu
- Preferably git, but the initial scripts should get this.

**Important: You will need to make sure you update your node install on any linux intall with [This Link](https://docs.npmjs.com/getting-started/fixing-npm-permissions)**

## Install
---

```
git clone git@github.com:samrocksc/my-dotfiles.git &&
cd my-dotfiles &&
./options &&
```

## TODO & Requests
---
[ ]  [Hyperterm](https://github.com/bnb/awesome-hyper) integration
[ ]  Better Menu options, I suck at bash
[ ]  Increased VPS scripts to make interaction with them easier.
[x]  Auto Fix for npm permissions on linx [Like this](https://docs.npmjs.com/getting-started/fixing-npm-permissions)
[ ]  Multiple Terminal Configs(bash, fish, etc.)
[ ]  Fedora Configs
[ ]  Arch Configs
[ ]  Create an loader for specific environments(tmux with X windows).
[ ]  More Keyboard modmaps for linux environments.
[ ]  Xmodmap auto-load functionalities.
[ ]  Windows?
[ ]  Different .vimrc setups(I've heard [this one is amazing](https://github.com/amix/vimrc))



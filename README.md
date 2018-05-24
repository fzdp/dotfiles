# install
* `git clone --recurisve git@github.com:fzdp/dotfiles.git`
* run `./install`

# neovim
* install latest neovim
* Run `CheckHealth`

# deoplete
* deoplete requires python3, see https://github.com/Shougo/deoplete.nvim#requirements
* change `g:python3_host_prog` to your python3 bin path

# spaceship-prompt
* install [powerline-font](https://github.com/powerline/fonts) or [FiraCode](https://github.com/tonsky/FiraCode)
* use fonts in terminal. for iTerm2, Preferences => Profiles => Text

# iTerm2
* if iTerm2 preferences doesn't work as expected, go to Preferences => General => preferences, and select dotfiles folder manually

# tmux
* tmux.conf inspired by https://github.com/samoshkin/tmux-config/blob/master/tmux/tmux.conf
* Run `prefix + I` to fetch plugin(Note: plugins except tpm are git ignored)
* keep font and Non-ASCII font same font size when using iTerm2

# nvm
* Remove system installed `node` and `npm`
* if you see error like below when starting tmux
> nvm is not compatible with the npm config "prefix" option: currently set to "/usr/local"
> Run nvm use --delete-prefix v9.2.0 --silent to unset it.

Consider following solution:
```sh
brew uninstall node
brew prune
sudo rm -rf /usr/local/{lib/node{,/.npm,_modules},bin,share/man}/{npm*,node*,man1/node*}
```

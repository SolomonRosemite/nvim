
# Prerequisite (may be incomplete. [see resource here](https://www.youtube.com/watch?v=w7i4amO_zaE))
## Install nvim 0.9.0 or higher

you should get it from [here](https://github.com/neovim/neovim/wiki/Installing-Neovim#linux)

for some reason using ``sudo apt install neovim`` doesn't install the latest version which causes problems with a few plugins.

## Add config
- Save this repo like so: ~/.config/nvim

## Install stuff
- ripgrep for `builtin.grep_string({ search = vim.fn.input("Grep > ") })`
- packer.nvim you can run the [quick start](https://github.com/wbthomason/packer.nvim#quickstart)
- neovim

## Enable stuff

1. open the nvim config

*you should get a few errors when opening nvim. so resolve these open the packer.lua and comment the line below*
![image](https://github.com/SolomonRosemite/nvim/assets/60587271/271c7dd2-ca67-4d49-842d-fe2ce7e6c297)

2. now close nvim and open again.
3. open the packer.lua and use cmd :so then :PackerSync to install pkgs
4. Resolve remaining problems i did not bother to document...

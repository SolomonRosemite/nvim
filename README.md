
# nvim config

## Known issues

- For some reason, when node can't be found in PATH, insert mode in nvim is
  extremely slow due to copilot.
- Prerequisite may be incomplete. [See full resource by the one and only ThePrimeagen here](https://www.youtube.com/watch?v=w7i4amO_zaE).

## Install nvim 0.9.0 or higher

you should get it from [here](https://github.com/neovim/neovim/wiki/Installing-Neovim#linux).

for some reason using ``sudo apt install neovim`` doesn't install the latest version which causes problems with a few plugins.

## Add config
- Save the repo here: ~/.config/nvim

## Install stuff
- ripgrep for telescope (`builtin.grep_string({ search = vim.fn.input("Grep > ") })`)
- packer.nvim you can run the [quick start](https://github.com/wbthomason/packer.nvim#quickstart)

## Enable stuff

1. open the nvim config

*you should get a few errors when opening nvim. so resolve these open the after/plugin/colors.lua and comment the line below*
![image](https://github.com/SolomonRosemite/nvim/assets/60587271/505f03f0-d177-44e5-811d-088959a65298)

2. now close nvim and open again.
3. open the packer.lua and use cmd :so then :PackerSync to install pkgs. <br/> If the packersync command fails, just try running it again.
4. Now close and open nvim again.
5. Setup copilot using, `:Copilot setup`

# env-common
This repo contains my common configs for *nix environments. It's intended that these configs are cloned onto the host, and then either symlinked to from their typical location or included by config conventions of the programs using them.

![](desktop.png)

## requirements
Fish config requires the following tools to be installed:

* [fd](https://github.com/sharkdp/fd)
* [exa](https://github.com/ogham/exa)
* [fzf](https://github.com/junegunn/fzf)
* [ripgrep](https://github.com/BurntSushi/ripgrep)
* [bat](https://github.com/sharkdp/bat)

## example includes

### ~/.bashrc
```sh
source ~/env-common/.bashrc
source ~/env-specific/.bashrc
```

### ~/.gitconfig
```
[include]
  path = env-common/.gitconfig
  path = env-specific/.gitconfig
```

# env-common
This repo contains my tool and environment configs shared across machines. It's intended that these configs are either symlinked to from their usual expected location, or included as partial configs when there's host-specific configs to merge with. In the latter case, rely on a "registry" pattern, for example `~/bin` with symlinks or an app like [qwik-hosts](https://github.com/RichardSchmitz/qwik-hosts).

This repo also documents the way environment-specific configs can be included.

## home directory
This is the recommended directory layout for including common and environment-specific configs. `->` denotes symbolic link.

```md
<!-- just ensures that ~/.bashrc is loaded -->
.bash_profile -> ~/env-common/.bash_profile

<!-- (registry) source all env .bashrc -->
.bashrc

<!-- (registry) symlink all env scripts and local tools -->
bin
  myscript -> ~/env-specific/scripts/myscript.sh
  gcon -> ~/env-common/scripts/gcon.sh
  qwik -> ~/tools/qwik-hosts/qwik

<!-- (registry) include all env .gitconfig. -->
.gitconfig

<!-- this repo, checked out on the host -->
env-common
  .bash_profile
  .gitconfig
  .bashrc
  scripts
    gcon.sh
  ...

<!-- some environment specific repo similar to this one -->
env-specific
  .gitconfig
  .bashrc
  hosts
  scripts
    myscript.sh

<!-- local tools example -->
tools
  qwik-hosts
    qwik
  ...

<!-- similar registry pattern when using other tools -->
.qwik
  hosts-available
    specific -> ~/env-specific/hosts
```

## requirements
Fish config requires the following tools to be tools:

* [fd](https://github.com/sharkdp/fd)
* [exa](https://github.com/ogham/exa)
* [fzf](https://github.com/junegunn/fzf)
* [ripgrep](https://github.com/BurntSushi/ripgrep)
* [bat](https://github.com/sharkdp/bat)

## registry examples

### ~/.bashrc
```sh
source ~/env-specific/.bashrc
source ~/env-common/.bashrc
```

### ~/.gitconfig
```
[include]
  path = env-common/.gitconfig
  path = env-specific/.gitconfig
```

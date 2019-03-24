# vim_settings

This repo contains vim settings.

To use these:
* Linux/Unix derivatives: place these in `$HOME/.vim`
* Windows: place these in `$HOME/vimfiles`

Make sure you do not have `$HOME/.vimrc` as, that is given priority over the `vimrc` file from this repository. The same is true
for `gvimrc`.

This repo uses submodules to point to other vim package repositories. You can clone this repo with `--recurse-submodules`
argument to automatically check out the submodules. Alternately, you can use `git submodule init` and `git submodule update`
after creating a regular clone to get all the submodule files checked out from the respective repositories.



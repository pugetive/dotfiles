Setup
-----

On OSX, you might have a .zshrc file looking like so:

```shell
source $HOME/Sites/dotfiles/zsh/config
source $HOME/Sites/dotfiles/aliases
```

Note that aliases should follow config so that local shortcuts override any defined by the oh-my-zsh plugins.

You should also symlink the included custom theme so that oh-my-zsh can find it:

```shell
ln -s $HOME/Sites/dotfiles/zsh/pugetive.zsh-theme $HOME/.oh-my-zsh/themes/.
```

<div align="center">
  <a href="https://github.com/sichak/dotfiles" title="Identif.js">
    <img alt="Shawn's dotfiles" src="https://raw.githubusercontent.com/sichak/dotfiles/master/icon.png" width="128px" />
  </a>
  <br />
  <h1>Shawn's dotfiles</h1>
</div>

<div align="center">
  <a href="https://opensource.org/licenses/mit-license.php">
    <img alt="MIT Licence" src="https://badges.frapsoft.com/os/mit/mit.svg?v=103" />
  </a>
</div>

<br />

<div align="center">

**These dotfiles** contain configurations for my customized Vim, Zsh, and Tmux environments.

</div>

## Usage

```bash
git clone https://github.com/sichak/dotfiles.git ~/.dotfiles
cd ~
```

##### tmux
```bash
ln -s .dotfiles/tmux/tmux.conf .tmux.conf
```

##### Vim
```bash
ln -s .dotfiles/vim .vim
ln -s .dotfiles/vim/vimrc .vimrc
vim +PlugInstall +qall now
```

##### Zsh
```bash
ln -s .dotfiles/zsh/zshrc .zshrc
ln -s .dotfiles/zsh/zshenv .zshenv
```

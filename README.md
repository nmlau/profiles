### Getting Started

Clone to your new box under ~/.profiles and then symlink your profiles to the repo. For example:

```bash
git clone https://github.com/nmlau/profiles.git ~/.profiles
ln -s ~/.profiles/bash_profile ~/.bash_profile
ln -s ~/.profiles/bashrc ~/.bashrc
ln -s ~/.profiles/emacs ~/.emacs
ln -s ~/.profiles/tmuxinator ~/.tmuxinator
ln -s ~/.profiles/tmux.conf ~/.tmux.conf
ln -s ~/.profiles/vimrc ~/.vimrc
ln -s ~/.profiles/zshrc ~/.zshrc
ln -s ~/.profiles/key-bindings.zsh ~/.oh-my-zsh/lib/key-bindings.zsh
```

### Setting up new profiles

```bash
cp -r ~/.tmuxinator ~/.profiles/tmuxinator # This line only needed for initial setup
ln -s ~/.profiles/tmuxinator ~/.tmuxinator
```

### Potential Problems

### Table of Contents

* Getting Started
* Setting up new Profiles
* Potential Issues
* Notes
* Change Log

### Getting Started

Clone to your new box under ~/.profiles and then symlink your profiles to the repo. For example:

```bash
git clone https://github.com/nmlau/profiles.git ~/.profiles

ln -s ~/.profiles/profiles/bash_profile ~/.bash_profile
ln -s ~/.profiles/profiles/bashrc ~/.bashrc
ln -s ~/.profiles/profiles/emacs ~/.emacs
ln -s ~/.profiles/profiles/tmuxinator ~/.tmuxinator
ln -s ~/.profiles/profiles/tmux.conf ~/.tmux.conf
ln -s ~/.profiles/profiles/vimrc ~/.vimrc
ln -s ~/.profiles/profiles/zshrc ~/.zshrc
```

### Setting up new profiles

```bash
cp -r ~/.tmuxinator ~/.profiles/tmuxinator # This line only needed for initial setup
ln -s ~/.profiles/tmuxinator ~/.tmuxinator
```

### Potential Issues

### Notes

* Resources aren't symlinked, just put here to save

### Change Log

* 06/01/16: Removed lib/key-bindings.zsh, moved custom bindkeys in it to zshrc. This allows ohmyzsh to update and consolidiates setup
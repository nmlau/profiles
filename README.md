### Table of Contents

* Getting Started
* Setting up new Profiles
* Potential Issues
* Notes
* Change Log

### Getting Started

Clone to your new box under ~/.profiles and then symlink your profiles to the repo. For example:

```bash
git clone https://github.com/nmlau/profiles.git ~/Dropbox/Sync/profiles

ln -s ~/Dropbox/Sync/profiles/bash_profile ~/.bash_profile
ln -s ~/Dropbox/Sync/profiles/bashrc ~/.bashrc
ln -s ~/Dropbox/Sync/profiles/emacs ~/.emacs
ln -s ~/Dropbox/Sync/profiles/tmuxinator ~/.tmuxinator
ln -s ~/Dropbox/Sync/profiles/tmux.conf ~/.tmux.conf
ln -s ~/Dropbox/Sync/profiles/vimrc ~/.vimrc
ln -s ~/Dropbox/Sync/profiles/zshrc ~/.zshrc
```

### Setting up new profiles

```bash
cp -r ~/.tmuxinator ~/Dropbox/Sync/profiles/tmuxinator # This line only needed for initial setup
ln -s ~/Dropbox/Sync/profiles/tmuxinator ~/.tmuxinator
```

### Potential Issues

### Notes

* Resources aren't symlinked, just put here to save

### Change Log

* 06/01/16: Removed lib/key-bindings.zsh, moved custom bindkeys in it to zshrc. This allows ohmyzsh to update and consolidiates setup
* 06/21/19: Moving to dropbox for easier syncing
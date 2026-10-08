dotfiles
========

Each top-level directory is a GNU stow package mirroring $HOME.

    git clone https://github.com/mfurga/configuration ~/code/dotfiles
    cd ~/code/dotfiles
    stow -t ~ tmux vim bash fish nvim alacritty bat

Remove a package's links with `stow -D -t ~ <pkg>`.

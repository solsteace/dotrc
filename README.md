# dotrc

> We will not repeat the same mistake again

## Available Configs
[![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)](./nvim/)
[![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)](./git/)
[Kitty](./kitty/)
[Tmux](./tmux/)
[Bash](./bash/)

## Installation

1. Acquire the source.
    ```
    git clone git@github.com:solsteace/dotrc.git
    ```

2. The easiest way to install the configurations are to create a symlink pointing to the config files here\*, like the following. An alternative way would be added on the respective directories.

    ``` bash
    $ ln /path/to/config /path/to/original/config

    # Assume `dotrc` is the path to this cloned repo
    # Example for Neovim:
    dotrc $ ln -sf ~/.config/nvim/ dotrc/nvim/
    ```

    > \* Not sure whether it would have a side effect in the future, but for now it kinda works

## Disclaimer

I have used materials that I don't own as the assets I used on my configuration. Please refer to `/_assets/README.md` for the details.

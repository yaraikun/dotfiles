# My Dotfiles

This repository contains my personal configuration files (dotfiles) for various applications and tools I use. These configurations help me maintain a consistent and efficient working environment across different machines.

## Prerequisites

Before you begin, ensure you have the following installed on your system:

* **stow:** A symbolic link farm manager used to manage dotfiles. You can usually install it via your distribution's package manager (e.g., `sudo apt-get install stow` on Debian/Ubuntu, `brew install stow` on macOS).
* **The applications themselves:** The configurations in this repository are for specific applications. Make sure you have the relevant applications installed (e.g., Neovim, tmux, wezterm, zsh).

## Installation

To set up these dotfiles, follow these steps:

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/yaraikun/dotfiles.git ~/.dotfiles
    ```
2.  **Navigate to the dotfiles directory:**
    ```bash
    cd ~/.dotfiles
    ```

3.  **Use stow to create symbolic links:**
    For each application or configuration directory in this repository, use `stow` to create the necessary symbolic links in your home directory. For example:

    * For Neovim configuration:
        ```bash
        stow nvim
        ```
    * For tmux configuration:
        ```bash
        stow tmux
        ```
    * For zsh configuration:
        ```bash
        stow zsh
        ```
    * And so on for `git`, `scripts`, `wezterm`, and any other top-level directories you have.

    This command will create symbolic links from the files within the `nvim` directory in your `~/.dotfiles` repository to the appropriate locations in your `~/.config/nvim` directory (as seen in your image).

## Usage

Once the symbolic links are created using `stow`, the respective applications will automatically pick up these configurations when you launch them.

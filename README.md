## Installation

My preferred way to apply the configuration settings is using [GNU Stow](https://www.gnu.org/software/stow/).

**This installation method assumes that the directory structure for these configs does not already exist within your $HOME directory. Stow will likely clash with the existing files/directories and fail to create the symlink.**

1. Install Stow
2. `cd`
3. `git clone https://github.com/dsul/dotfiles.git` or `git clone git@github.com:dsul/dotfiles.git`
4. `cd dotfiles`
5. Run `stow <directory name>` to select what configs you want to apply, or `stow *` if you want everything

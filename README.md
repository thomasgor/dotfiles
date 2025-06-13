# 🛠️ My Dotfiles

This repository contains my personal dotfiles for tools like **Bash**, **Git**, **Neovim**, and others.  
The configuration is modular and managed using **[GNU Stow](https://www.gnu.org/software/stow/)** to easily symlink files into the home directory.

---

## 📁 Repository Structure

```
dotfiles/
├── bash/           → ~/.bashrc
├── git/            → ~/.gitconfig
└── nvim/           → ~/.config/nvim/
```

Each subdirectory represents a set of config files for one tool.  
Files inside are symlinked into your home directory using GNU Stow.

---

## ✅ Requirements

- `git`
- [`stow`](https://www.gnu.org/software/stow/)
- (Optional) `neovim`, `bash`, `zsh`, etc.

### Install GNU Stow

```bash
# Debian/Ubuntu
sudo apt install stow

# Arch Linux
sudo pacman -S stow

# macOS (Homebrew)
brew install stow
```

---

## 🚀 Setup on a New Machine

```bash
# 1. Clone the repository
git clone git@github.com:your-username/dotfiles.git ~/dotfiles
cd ~/dotfiles

# 2. Use stow to symlink configs
stow bash
stow git
stow nvim
```

Or symlink everything at once:

```bash
stow */
```

To remove a specific set of symlinks:

```bash
stow -D bash
```

---

## 💡 Notes

- The folder structure **must match the desired destination**, e.g.:

  - `bash/.bashrc` → becomes `~/.bashrc`
  - `nvim/.config/nvim/init.lua` → becomes `~/.config/nvim/init.lua`

- All files remain version-controlled in your `~/dotfiles` folder.
- You can safely test or reset symlinks anytime using `stow` and `stow -D`.

---

## 🌐 Example Usage with Git

```bash
# Track your changes
git add .
git commit -m "Update Neovim config"
git push
```

---

## 🙌 Credits

Inspired by [GNU Stow](https://www.gnu.org/software/stow/) and dotfiles best practices in the Linux/UNIX community.


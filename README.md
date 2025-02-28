# 🚀 NVim Configuration

*A sleek, modular Neovim setup with LazyVim, Tokyo Night theme, and developer-friendly tooling.*

[![Neovim](https://img.shields.io/badge/Neovim-0.9+-green.svg?style=flat&logo=neovim)](https://neovim.io)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

<div align="center">
  <img src="Captues/Screenshot 2025-01-26 at 7.57.41 PM.png" width="600" alt="Tokyo Night Theme Preview">
</div>

## ✨ Features

- **Tokyo Night** theme with storm variant
- **Lazy.nvim** plugin management
- Pre-configured LSP (TypeScript, Rust, Tailwind)
- IDE-like features:
  - Smart diagnostics
  - Code formatting (Prettier/ESLint)
  - Git integration
  - Fuzzy search (Telescope)
- Custom keymaps for enhanced workflow
- Modular structure for easy customization
- **GitHub Copilot Integration**: 🤖 The repository includes configuration for GitHub Copilot, which provides AI-powered code suggestions. This can be found in `nvim/lua/josean/plugins-setup.lua`.
- **Custom Keymaps**: ⌨️ The repository has extensive custom keymaps for improved workflow, such as navigation, editing, and window management. These can be found in `nvim/lua/config/keymaps.lua` and `nvim/lua/josean/core/keymaps.lua`.
- **LSP Configuration**: 🛠️ The repository is pre-configured with LSP servers for various languages, including TypeScript, Rust, and Tailwind. This can be found in `nvim/lua/josean/plugins/lsp/lspconfig.lua`.
- **Plugin Management with Lazy.nvim**: 📦 The repository uses Lazy.nvim for efficient plugin management, ensuring a smooth and fast setup. This can be found in `nvim/lua/config/lazy.lua`.
- **Code Formatting and Linting**: 🧹 The repository includes configuration for code formatting and linting using Prettier and ESLint. This can be found in `nvim/lua/josean/plugins/lsp/null-ls.lua`.
- **Git Integration**: 🐙 The repository includes Git integration with Gitsigns, providing visual indicators for line modifications. This can be found in `nvim/lua/josean/plugins/gitsigns.lua`.
- **Fuzzy Search with Telescope**: 🔍 The repository includes Telescope for fuzzy searching files, strings, and more. This can be found in `nvim/lua/josean/plugins/telescope.lua`.
- **Auto Pairs and Tagging**: 🔗 The repository includes configuration for auto-closing pairs and tags using nvim-autopairs and nvim-ts-autotag. This can be found in `nvim/lua/josean/plugins/autopairs.lua`.
- **Commenting**: 💬 The repository includes configuration for easy commenting using Comment.nvim. This can be found in `nvim/lua/josean/plugins/comment.lua`.
- **Status Line with Lualine**: 📊 The repository includes a customized status line using Lualine with the Nightfly theme. This can be found in `nvim/lua/josean/plugins/lualine.lua`.

## 🛠️ Installation

1. **Backup existing config** (if any):
```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

2. **Clone the repository**:
```bash
git clone https://github.com/thejokers69/nvim-config.git ~/.config/nvim
```

3. **Bootstrap Neovim**:
```bash
nvim --headless "+Lazy! sync" +qa
```

## ⚙️ Configuration

### Key Files:
- `lua/config/lazy.lua` - Plugin manager setup
- `lua/config/keymaps.lua` - Custom keybindings
- `lua/josean/core/options.lua` - Editor settings

### Customize Theme:
```lua
-- In lua/config/lazy.lua
{
  "folke/tokyonight.nvim",
  opts = {
    style = "storm", -- Try: "night" (default), "storm", "day", "moon"
    transparent = true,
  }
}
```

## 🧩 Plugin Highlights

| Category          | Plugins                                                                 |
|-------------------|-------------------------------------------------------------------------|
| **Core**          | LazyVim, Tokyo Night, Telescope, Treesitter                            |
| **LSP**           | nvim-lspconfig, mason.nvim, null-ls                                    |
| **UI**            | Lualine, nvim-tree, WhichKey                                           |
| **Debugging**     | nvim-dap, DAP-UI                                                       |
| **Productivity**  | Copilot, Comment.nvim, AutoPairs                                       |

## ⌨️ Custom Keymaps

```lua
-- Navigation
<leader>p      = Paste from register 0
<C-j>          = Next diagnostic
te             = New tab

-- Editing
<leader>d      = Delete without yank
<leader>i      = Toggle LSP inlay hints

-- Window Management
ss/sv          = Split window horizontal/vertical
<C-w> arrows   = Resize windows
```

## 📂 Project Structure

```
nvim/
├── lua/
│   ├── config/          # Core configuration
│   ├── josean/          # Base configuration
│   ├── craftzdog/       # Custom utilities
│   └── plugins/         # Plugin configurations
├── init.lua             # Entry point
└── lazy-lock.json       # Plugin versions
```

## 💡 Tips

1. Run `:Lazy` to manage plugins
2. Use `:Telescope find_files` for quick navigation
3. `:LspInfo` shows active language servers

## 🤝 Credits
- [LazyVim](https://github.com/LazyVim/LazyVim) for base configuration
- [Tokyo Night](https://github.com/folke/tokyonight.nvim) theme
- Inspired by Josean's Neovim setup

---

> **Note**: Requires Neovim 0.9+ and a [nerd font](https://www.nerdfonts.com/) for icons

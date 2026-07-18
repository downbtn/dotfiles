# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal Neovim configuration using lazy.nvim as the plugin manager. The configuration is written entirely in Lua.

## Structure

- `init.lua` - Entry point: sets vim options, leader key (`;`), loads plugins, defines keymaps
- `lua/cfg/lazy.lua` - Bootstraps and configures lazy.nvim plugin manager
- `lua/plugins.lua` - Plugin specifications with their configurations
- `ftplugin/` - Filetype-specific settings (ALE fixers per language)

## Key Configuration Details

**Leader key**: `;`

**Plugin manager**: lazy.nvim (auto-bootstraps if missing)
- `;pu` - Update plugins
- `;ps` - Sync plugins

**LSP**: Configured via nvim-lspconfig with Mason for server management
- Servers: rust-analyzer, pylsp, clangd
- Completion: nvim-cmp with vsnip snippets
- `;jd` - Go to definition
- `;jD` - Go to declaration
- `;ji` - Go to implementation (when supported)
- `;m` - Open Mason UI

**Linting/Formatting**: ALE (fixers configured per-filetype in ftplugin/)
- C: clang-format
- Python: black
- LaTeX: latexindent

**Other keymaps**:
- `;f` - Toggle nvim-tree file explorer
- `;t` - Toggle tagbar
- `;g` - Toggle Goyo (distraction-free writing)
- `;y/d/p/s/x` - System clipboard operations

**Colorscheme**: gruvbox-material (dark, medium contrast)

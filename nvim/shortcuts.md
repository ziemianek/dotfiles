# Vim & Neovim Cheatsheet

This cheatsheet provides a summary of useful Vim/Neovim commands and custom shortcuts defined in your configuration.

## Popular Vim Commands

### Movement
| Command | Description |
|---|---|
| `h`, `j`, `k`, `l` | Move left, down, up, right |
| `w` | Move to the beginning of the next word |
| `b` | Move to the beginning of the previous word |
| `e` | Move to the end of the current word |
| `0` | Move to the beginning of the line |
| `$` | Move to the end of the line |
| `gg` | Go to the first line of the file |
| `G` | Go to the last line of the file |
| `:<line_number>` | Go to a specific line number |

### Editing
| Command | Description |
|---|---|
| `i` | Enter insert mode at the current cursor position |
| `a` | Enter insert mode after the current cursor position |
| `o` | Open a new line below and enter insert mode |
| `O` | Open a new line above and enter insert mode |
| `x` | Delete the character under the cursor |
| `dd` | Delete the current line |
| `yy` | Yank (copy) the current line |
| `p` | Paste after the cursor |
| `P` | Paste before the cursor |
| `u` | Undo |
| `Ctrl+r` | Redo |

### Searching
| Command | Description |
|---|---|
| `/pattern` | Search forward for `pattern` |
| `?pattern` | Search backward for `pattern` |
| `n` | Repeat the last search in the same direction |
| `N` | Repeat the last search in the opposite direction |

### Visual Mode
| Command | Description |
|---|---|
| `v` | Enter visual mode (character-wise) |
| `V` | Enter visual mode (line-wise) |
| `Ctrl+v` | Enter visual mode (block-wise) |
| `d` | Delete the selection |
| `y` | Yank (copy) the selection |

## Custom Shortcuts

### General
| Keybinding | Description |
|---|---|
| `<leader>y` | Yank to clipboard (normal and visual modes) |

### Buffers
| Keybinding | Description |
|---|---|
| `<leader>n` | Go to the next buffer |
| `<leader>p` | Go to the previous buffer |
| `<leader>x` | Close the current buffer |

### Telescope (Fuzzy Finder)
| Keybinding | Description |
|---|---|
| `<leader>ff` | Find files |
| `<leader>fp` | Find Git files |
| `<leader>fz` | Live grep |
| `<leader>fo` | Find old files |

### Undotree
| Keybinding | Description |
|---|---|
| `<leader>u` | Toggle the undo tree |

### Nvim-Tree (File Explorer)
| Keybinding | Description |
|---|---|
| `<leader>ef` | Focus the file explorer |
| `<leader>ee` | Toggle finding the current file in the explorer |
| `<leader>ec` | Collapse the file explorer |

### Comments
| Keybinding | Description |
|---|---|
| `<leader>/` | Toggle comment (normal and visual modes) |

### LSP (Language Server Protocol)
| Keybinding | Description |
|---|---|
| `K` | Show documentation for the symbol under the cursor |
| `gd` | Go to the definition of the symbol |
| `gr` | Find references to the symbol |
| `<leader>e` | Show diagnostics in a floating window |
| `[d` | Go to the previous diagnostic |
| `]d` | Go to the next diagnostic |
| `<F2>` | Rename the symbol |
| `<leader>ft` | Format the code (normal and visual modes) |

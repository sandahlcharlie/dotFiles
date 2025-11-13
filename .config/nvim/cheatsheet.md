# Neovim Configuration Cheatsheet

## Basic Vim Navigation

### 1. Normal Mode

**Basic Movement:**

*   `h`: Left
*   `j`: Down
*   `k`: Up
*   `l`: Right
*   `b`: Back one word
*   `w`: Forward one word
*   `e`: End of word
*   `gg`: Beginning of file
*   `G`: End of file
*   `0`: Beginning of line
*   `$`: End of line
*   `^`: First non-blank character of line.
*   `:`:  Enter command-line mode (for saving, searching, etc.)

**Editing Commands:**

*   `i`: Insert mode (before cursor)
*   `a`: Insert mode (after cursor)
*   `o`: Open new line below
*   `O`: Open new line above
*   `d{motion}`: Delete (e.g., `dw` - delete word, `dd` - delete line)
*   `c{motion}`: Change (delete and insert – e.g., `cw` - change word)
*   `r{char}`: Replace character under cursor with {char}
*   `x`: Delete character under cursor
*   `u`: Undo
*   `Ctrl+r`: Redo
*   `~`: Toggle case of character under cursor
*   `>>`: Indent line
*   `<<`: Unindent line
*   `=`: Auto-indent current line
*   `yy`: Yank (copy) line
*   `p`: Put (paste) after cursor
*   `P`: Put (paste) before cursor
*   `v{motion}`: Visually select text (Character-wise)
*   `V`: Visually select lines
*   `Ctrl+v`: Visually select blocks of text (rectangular)
*   `:w`: Save file
*   `:q`: Quit (if no changes)
*   `:q!`: Quit (discard changes)
*   `:wq`: Save and quit
*   `:x`: Save and quit (only if changes were made)
*   `:!{command}`: Execute shell command
*   `:%s/{old}/{new}/g`: Replace all occurrences of {old} with {new} in file.
*   `:%s/{old}/{new}/gc`: Replace all occurrences of {old} with {new} in file, prompting for confirmation.

**Search:**

*   `/ {pattern}`: Search forward for {pattern}
*   `? {pattern}`: Search backward for {pattern}
*   `n`: Next search result
*   `N`: Previous search result
* `:%s/old/new/g` - Replace all occurrences in file
* `:%s/old/new/gc` - Replace all occurrences in file with confirmation

**Buffers and Windows:**

*   `:ls`: List open buffers
*   `:b {number}`: Switch to buffer {number}
*   `:bn`: Next buffer
*   `:bp`: Previous buffer
* `Ctrl+w s` - Split window horizontally
* `Ctrl+w v` - Split window vertically
* `Ctrl+w h/j/k/l` - Navigate between windows
* `Ctrl+w q` - Close window
* `Ctrl+w o` - Close all other windows

**Tabs**

- `:tabnew` - New tab
- `:tabn` - Next tab
- `:tabp` - Previous tab
- `:tabc` - Close tab

#### LSP (Buffer-Local)
* `gD`: Go to LSP declaration 
* `gd`: Go to LSP definition
* `K`: Show hover information
* `gi`: Go to LSP implementation  
* `<C-k>`: Show signature help  
* `<space>wa`: Add workspace folder  
* `<space>wr`: Remove workspace folder  
* `<space>wl`: List workspace folders  
* `<space>D`: Go to type definition  
* `<space>rn`: Rename symbol  
* `<space>ca`: Show code actions  
* `gr`: Show references to symbol  
* `<space>f`: Format buffer (async)

#### Telescope
* `<leader>ff`: Find files  
* `<leader>fg`: Live grep  
* `<leader>fb`: Find buffers  
* `<leader>fh`: Help tags  
* `<leader>fr`: Recent files (oldfiles)  
* `<leader>fs`: Fuzzy find in current buffer

#### NvimTree
* `<leader>e`: Toggle file explorer  
* `<leader>tf`: Reveal current file in tree  
* `<leader>tc`: Collapse all folders

#### Gitsigns
* `]c`: Next git hunk  
* `[c`: Previous git hunk  
* `<leader>hs`: Stage the current hunk  
* `<leader>hr`: Reset the current hunk  
* `<leader>hS`: Stage the entire buffer  
* `<leader>hu`: Undo stage hunk  
* `<leader>hR`: Reset the entire buffer  
* `<leader>hp`: Preview the current hunk  
* `<leader>hb`: Blame line (full)  
* `<leader>tb`: Toggle current line blame  
* `<leader>hd`: Diff this buffer against index  
* `<leader>hD`: Diff this buffer against `~`  
* `<leader>td`: Toggle deleted lines in diff

#### Iron (REPL)
* `<leader>sc`: Send motion to REPL (also used in Visual Mode)  
* `<leader>sf`: Send entire file to REPL  
* `<leader>sl`: Send current line to REPL  
* `<leader>sm`: Send marked text to REPL  
* `<leader>mc`: Mark motion text (also used in Visual Mode)  
* `<leader>md`: Remove mark  
* `<leader>s<CR>`: Send a literal “Enter” to the REPL  
* `<leader>s␣`: Interrupt the REPL  
* `<leader>sq`: Exit the REPL  
* `<leader>cl`: Clear REPL buffer  
* `<leader>rc`: Send current R chunk in `.Rmd` files


### 2. Insert Mode - For typing text

*   `Esc`: Return to Normal mode
*   `Ctrl+h`: Backspace
*   `Ctrl+w`: Delete word before cursor
*   `Ctrl+u`: Delete line from cursor to beginning
*   `Ctrl+Space`: Autocomplete (may require configuration)
*   `Tab`: Autocomplete
*   `<C-x><C-o>`:  Continue editing and go back to Normal mode temporarily, then return to Insert mode.

#### Plugins in Insert Mode
* `<C-b>`: Scroll docs up  
* `<C-f>`: Scroll docs down  
* `<C-Space>`: Trigger completion manually  
* `<C-e>`: Abort completion  
* `<CR>`: Confirm current completion (select = true)


### 3. Visual Mode - For selecting text

*   `h/j/k/l`: Move cursor to select text
*   `w/b`: Select words
*   `e`: Select to end of word
*   `y`: Yank (copy) selected text
*   `d`: Delete selected text
*   `c`: Change selected text (delete and enter Insert mode)
*   `>`: Indent selected lines
*   `<`: Unindent selected lines
*   `Esc`: Return to Normal mode

**Combining Visual Mode with other commands:**

*   `v{motion}d`: Delete the visually selected text.
*   `v{motion}y`: Copy the visually selected text.
*   `v{motion}c`: Change the visually selected text (delete and enter insert mode).

#### Plugins in Visual Mode
* `<leader>hs`: Stage selected hunk(s) (Gitsigns) 
* `<leader>hr`: Reset selected hunk(s) (Gitsigns) 
* `<leader>sc`: Send visual selection to REPL (Iron) 
* `<leader>mc`: Mark selection (used for Iron)

### Saving/Quitting
- `:w` - Save file
- `:q` - Quit
- `:wq` - Save and quit
- `:q!` - Quit without saving



## Configuration Settings

### Indentation Settings
- Spaces for indentation (not tabs)
- 4 spaces per tab
- Auto-indentation enabled
- Smart indentation enabled

### Display Settings
- Relative line numbers enabled
- Clipboard set to system clipboard

## Notes
- Your configuration uses the leader key (likely set to space by default)
- LSP servers are configured for Python, TypeScript/JavaScript, Lua, C/C++, Bash, YAML and Java
- Treesitter is configured for syntax highlighting and code folding
- Your setup includes local installations of language servers where possible

Remember that you can customize these keybindings further by editing your `keymaps.lua` file.

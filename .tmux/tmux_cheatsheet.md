# Tmux Configuration Cheat Sheet

## Basic Commands

| Command | Description |
|---------|-------------|
| `tmux` | Start a new tmux session |
| `tmux new -s name` | Start a new session with name |
| `tmux ls` | List all tmux sessions |
| `tmux attach -t name` | Attach to a session named "name" |
| `tmux kill-session -t name` | Kill session named "name" |
| `exit` or `Ctrl+d` | Exit current tmux session |

## Prefix Key

The prefix key in this configuration is set to `Ctrl+a` (instead of the default `Ctrl+b`)

## Session Management

| Shortcut | Description |
|----------|-------------|
| `Ctrl+a d` | Detach from current session |
| `Ctrl+a $` | Rename current session |
| `Ctrl+a s` | List all sessions |

## Window Management

| Shortcut | Description |
|----------|-------------|
| `Ctrl+a c` | Create a new window (in same directory) |
| `Ctrl+a ,` | Rename current window |
| `Ctrl+a n` | Move to next window |
| `Ctrl+a p` | Move to previous window |
| `Ctrl+a w` | List all windows |
| `Ctrl+a &` | Kill current window |
| `Ctrl+a 0-9` | Switch to window number 0-9 |

## Pane Management

| Shortcut | Description |
|----------|-------------|
| `Ctrl+a \|` | Split pane horizontally (same directory) |
| `Ctrl+a -` | Split pane vertically (same directory) |
| `Ctrl+a h` | Move to left pane |
| `Ctrl+a j` | Move to pane below |
| `Ctrl+a k` | Move to pane above |
| `Ctrl+a l` | Move to right pane |
| `Ctrl+a q` | Show pane numbers (press number to select) |
| `Ctrl+a H` | Resize pane left (5 cells) |
| `Ctrl+a J` | Resize pane down (5 cells) |
| `Ctrl+a K` | Resize pane up (5 cells) |
| `Ctrl+a L` | Resize pane right (5 cells) |
| `Ctrl+a x` | Kill current pane |
| `Ctrl+a z` | Toggle pane zoom (maximize/restore) |
| `Ctrl+a {` | Move current pane left |
| `Ctrl+a }` | Move current pane right |
| `Ctrl+a o` | Go to next pane |

## Copy Mode (Vi keybindings)

| Shortcut | Description |
|----------|-------------|
| `Ctrl+a [` | Enter copy mode |
| `q` | Exit copy mode |
| `v` | Start selection |
| `y` | Copy selection and exit copy mode |
| `/` | Search forward |
| `?` | Search backward |
| `n` | Next search match |
| `N` | Previous search match |
| `g` | Go to top |
| `G` | Go to bottom |
| `h,j,k,l` | Navigate (left, down, up, right) |

## Plugin Features

### tmux-resurrect

| Shortcut | Description |
|----------|-------------|
| `Ctrl+a Ctrl+s` | Save tmux environment |
| `Ctrl+a Ctrl+r` | Restore tmux environment |

### tmux-copycat

| Shortcut | Description |
|----------|-------------|
| `Ctrl+a /` | Regex search |
| `Ctrl+a Ctrl+f` | File search |
| `Ctrl+a Ctrl+g` | Git status search |
| `Ctrl+a Ctrl+u` | URL search |
| `Ctrl+a Ctrl+d` | Number search |
| `Ctrl+a Alt+i` | IP address search |
| `n` | Jump to next match |
| `N` | Jump to previous match |

### tmux-yank

| Shortcut | Description |
|----------|-------------|
| `y` | In copy mode: yank selection to system clipboard |
| `Y` | In copy mode: yank current line to system clipboard |

## Configuration

| Shortcut | Description |
|----------|-------------|
| `Ctrl+a r` | Reload tmux configuration |

## Other

- Mouse support is enabled for scrolling, selecting text, and selecting/resizing panes
- Status bar is positioned at the top
- Window and pane numbering starts at 1
- Continuum auto-saves your session every 15 minutes

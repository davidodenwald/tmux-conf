[Tmux](http://tmux.sourceforge.net/) is a terminal multiplexer. Tested with tmux 1.9.

This config has support for [tmux-mem-cpu](http://github.com/thewtex/tmux-mem-cpu-load).

Prefix mapped to Ctrl-A for `screen` users.

# Installation

Download:

```bash
git clone https://github.com/davidodenwald/tmux-config.git ~/.tmux
```

  Copy tmux config to home:

```bash
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf
ln -s ~/.tmux/.tmux-copy.conf ~/.tmux-copy.conf
```

  Update config:

```bash
tmux source-file ~/.tmux.conf
```

# Start tmux

  To start a session:

  `tmux`

  To reattach a previous session:

  `tmux attach`

  To reload config file

  `<Control + b>:` (which could Ctrl-B or Ctrl-A if you overidden it) then `source-file ~/.tmux.conf`

# Commands

  Our prefix/leader key is `Control + a` now (just like the `screen` multiplexer). This sequence must be typed before any tmux shortcut.

  * `Control + a` before any command
  * `Control + a` then `?` to bring up list of keyboard shortcuts
  * `Control + a` then `v` to split window vertical
  * `Control + a` then `b` to split window horizontal
  * `Control + a` then `<Space>` to change pane arrangement
  * `Control + a` then `o` to rotate panes
  * `Control + a` then `h`, `j`, `k`, `l` to move left, down, up, right.
  * `Control + a` then `;` to go to last panel
  * `Control + a` then `e` to load the tmux.copy.conf in which you are able to copy 


  Beyond your first window:

  * `Control + a` then `c` to create a new window
  * `Control + a` then `n` to next window
  * `Control + a` then `p` to previous window
  * `Control + a` then `[0-9]` move to window number
  * `Control + a` then `x` to kill window

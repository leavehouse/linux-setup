# Things I've had to do to set up Ubuntu.

## /etc/profile

I installed go 1.9 through the gophers PPA, and to add that to PATH system-wide I did:

PATH="/usr/lib/go-1.9/bin:$PATH"

## ~/.profile

Building `go-ipfs` from source currently requires GOPATH to be set, even though go 1.9 does not. So I added:

`export GOPATH="$HOME/go"`

Also, appended `$GOPATH/bin` to PATH.

## MATE Terminal

To make `vim` have colors, I went to `Edit > Profile Preferences > Title and Command > Run a custom command instead of my shell` and used:

```env TERM=xterm-256color /bin/bash```

## ~/.bashrc

Added `set -o vi`

## ~/.vimrc

See .vimrc

## Swapping caps and escape

I'm on Ubuntu MATE 16.04.3, so this can be done by:

 - `System > Preferences > Hardware > Keyboard`
 - `Layouts` tab
 - `Options` button
 - `Caps Lock key behavior`
 - select`Swap ESC and Caps Lock`

## carpalx qwkrfy3 keyboard layout

I use a variant of the [carpalx](http://mkweb.bcgsc.ca/carpalx/) [qwkrfy layout](http://mkweb.bcgsc.ca/carpalx/?partial_optimization) that swaps only 3 pairs of letters instead of 5 w.r.t. QWERTY: e & k, t & f, o & j.

This was set up by copying `carpalx.xkb` (which was modified from the X11 keyboard layout available on the Carpalx website) to `/usr/share/X11/xkb/symbols/carpalx`, then making a shell script that does `setxkbmap carpalx`


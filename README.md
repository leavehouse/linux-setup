# Things I've had to do to set up Ubuntu.

## /etc/profile

I installed go 1.9 through the gophers PPA, and to add that to PATH system-wide I did:

PATH="/usr/lib/go-1.9/bin:$PATH"

## ~/.profile

Building `go-ipfs` from source currently requires GOPATH to be set, even though go 1.9 does not. So I added:

`export GOPATH="$HOME/go"`

Also, append `$GOPATH/bin` to PATH.

To make `vim` have colors, I also added:

`export TERM=xterm-256color`

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

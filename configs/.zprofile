export PROJECT_DIR=$HOME/projects

[[ -f ~/.zshrc ]] && source ~/.zshrc

#Add bin if it exists
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

#Golang
if [ -d "$HOME/projects/go" ] ; then
    export GOPATH=$HOME/projects/go
    export GOBIN=$GOPATH/bin
    export PATH=$PATH:$GOBIN
fi

#Scala play
if [ -d "$HOME/bin/play" ] ; then
    export PATH=$PATH:$HOME/bin/play
fi

#Cabal
if [ -d "$HOME/.cabal/bin" ] ; then
    export PATH=$PATH:$HOME/.cabal/bin
fi

export LD_LIBRARY_PATH=/usr/local/lib
export PATH=$PATH:/usr/local/go/bin

# startx if on tty1 and tmux on tty2
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
    #exec xinit -- :0 -novtswitch &>/dev/null &
    #logout
    startx 
    logout
fi

function humanpdf() {
    qpdf $1 --qdf - | nvim - -b
}

function pdftext() {
  gs -sDEVICE=txtwrite -o - $1
}

export PATH="/usr/sbin:$PATH"
export PATH="/opt/flutter/bin:$PATH"
export PATH="/opt/flutter/bin/cache/dart-sdk/bin:$PATH"
export PATH="$PATH":"/opt/flutter/.pub-cache/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export CHROME_EXECUTABLE=google-chrome-stable
export GIT_EDITOR=nvim

source /home/mrb/.ghc-wasm/env

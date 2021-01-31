#!/bin/bash

SRC=$(dirname "$0")
HISTORY="$HOME/.history"
BASHPH="$HOME/.bash_ph"
BASHRC="$HOME/.bashrc"

echo "Setting up 'persistent history'...."
echo "Actions:"
echo "  mkdir $HOME/.history"
echo "  cp $SRC/.bash_ph $BASHPH"
echo "  chmod +x $BASHPH"
echo "  echo \" if [ -f $BASHPH ]; then . $BASHPH; fi \" >> $HOME/.bashrc"
echo ""
read -p "OK? Press [Enter] to proceed, ctrl-c to cancel:"

if [ -d "$HISTORY" ] 
then 
    echo "WARNING: $HISTORY already exists"
    read -p "Press [Enter] to proceed, ctrl-c to cancel:"
else
    mkdir "$HISTORY"
fi

cp "$SRC/.bash_ph" "$BASHPH"
chmod +x "$BASHPH"

echo "[ -f $BASHPH ] && . $BASHPH" >> "$BASHRC"

echo "Done, please close/re-open (or 'source $BASHPH' ) any active terminal windows to start using persistent history"
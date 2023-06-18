#!/usr/bin/env bash

DIR=`pwd`
FILES=`ls -a`
TIME=`date +%T-%d-%B-%Y`

get_files() {
  gum choose --no-limit $FILES
}

CHOSEN=$(get_files)

link() {
  for file in $CHOSEN; do
	  if [[ -f "$HOME/$file" ]]; then 
		  echo -e ${BPurple}"[*] Creating a backup of configs..." ${Color_Off}
      mv "$HOME/$file" "$HOME/${file}.${USER}.${TIME}"
    fi
    ln -s $DIR/$file $HOME/$file
  done
}

link


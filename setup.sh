#!/usr/bin/env bash

## Colors ----------------------------
Color_Off='\033[0m'
BBlack='\033[1;30m' BRed='\033[1;31m' BGreen='\033[1;32m' BYellow='\033[1;33m'
BBlue='\033[1;34m' BPurple='\033[1;35m' BCyan='\033[1;36m' BWhite='\033[1;37m'

## Directories ----------------------------
DIR=$(pwd)
FONT_DIR="$HOME/.local/share/fonts"
CONFIG_DIR="$HOME/.config"
FILES=$(ls -a files)
TIME=$(date +%T-%d-%B-%Y)

# Install Fonts
install_fonts() {
	echo -e "${BBlue}" "\n[*] Installing fonts..." "${Color_Off}"

	if [[ -d "$FONT_DIR" ]]; then
		cp -rf "$DIR/fonts/*" "$FONT_DIR"
	else
		mkdir -p "$FONT_DIR"
		cp -rf "$DIR/fonts/*" "$FONT_DIR"
	fi
	echo -e "${BYellow}" "[*] Updating font cache...\n" "${Color_Off}"
	fc-cache
}

get_files() {
	gum choose --no-limit $FILES --cursor-prefix="[ ] " --selected-prefix="[*] " --unselected-prefix="[ ] "
}

CHOSEN=$(get_files)

set_config() {
	for file in $CHOSEN; do
		echo [[ -d "${HOME/file}" ]]
		if [[ -d "$HOME/$file" ]]; then
			echo -e "${BPurple}" "[*] Creating a backup of configs..." "${Color_Off}"
			read -rp "Back up folder...(y/n)?" choice

			case "$choice" in
			y | Y) mv "$HOME/$file" "$HOME/${file}.${USER}.${TIME}" ;;
			n | N) rm -rf "${HOME/file/}" ;;
			*) echo "invalid" ;;
			esac
		fi

		if [[ -f "$HOME/$file" ]]; then
			echo -e "${BPurple}" "[*] Creating a backup of configs..." "${Color_Off}"
			read -rp "Back up folder...(y/n)?" choice

			case "$choice" in
			y | Y) mv "$HOME/$file" "$HOME/${file}.${USER}.${TIME}" ;;
			n | N) rm -rf "${HOME/file/}" ;;
			*) echo "invalid" ;;
			esac
		fi

		echo 'pass'
		ln -s "$DIR/files/$file" "$HOME/$file"

	done
}

# Main
main() {
	install_fonts
	set_config
}

main

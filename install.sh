for DOTFILE in `find ./system`
do
	[ -f "$DOTFILE" ] && source "$DOTFILE"
done

cp apps/.vimrc ~/.vimrc
cp apps/.gitconfig ~/.gitconfig

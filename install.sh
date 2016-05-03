for DOTFILE in `find ./system`
do
	[ -f "$DOTFILE" ] && source "$DOTFILE"
done


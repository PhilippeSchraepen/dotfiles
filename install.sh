for DOTFILE in `find ./system`
do
	[ -f "$DOTFILE" ] && source "$DOTFILE"
done

cp apps/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp apps/.gitconfig ~/.gitconfig

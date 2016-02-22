# Load the shell dotfiles
for file in ~/.{path,prompt,bashrc,exports,aliases,functions,inputrc}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
	done;
	unset file;

# Welcome message
echo "Hello there!";
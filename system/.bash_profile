# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,prompt,bashrc,exports,aliases,functions,inputrc}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
	done;
	unset file;

# Welcome message
echo "Hello there!";

# Sudoless ruby gems
export RBENV_ROOT="$(brew --prefix rbenv)"
export GEM_HOME="$(brew --prefix)/opt/gems"
export GEM_PATH="$(brew --prefix)/opt/gems"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

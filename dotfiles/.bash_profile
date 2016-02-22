# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,bashrc,exports,aliases,functions,extra}; do
		[ -r "$file" ] && [ -f "$file" ] && source "$file";
		done;
		unset file;

# Welcome message
echo "Hello there!";

# Sudoless ruby gems
export RBENV_ROOT="$(brew --prefix rbenv)"
export GEM_HOME="$(brew --prefix)/opt/gems"
export GEM_PATH="$(brew --prefix)/opt/gems"

# helpers

	#extract:  Extract most know archives with one command
    extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

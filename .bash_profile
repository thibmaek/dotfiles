# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"

# Load the shell dotfiles, and then some:
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null
done

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
	source "$(brew --prefix)/etc/bash_completion"
fi

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Dock Finder QuickLookSatellite Preview quicklookd SystemUIServer Terminal" killall

# Bash completion brew formula
if [ -f `brew --prefix`/etc/bash_completion.d ]; then
    . `brew --prefix`/etc/bash_completion.d
fi

# Source NVM
export NVM_DIR="/Users/thibaultmaekelbergh/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Source Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Extra aliases
for plugin in ~/.ext_aliases/*; do
	source "$plugin"
done
unset plugin

# Plugin Tab-completions
source $NVM_DIR/versions/node/$(node -v)/lib/node_modules/npm/lib/utils/completion.sh #npm
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion #nvm
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi #pyenv
. ~/.git-completion.bash #git
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi #rbenv
if which bundler > /dev/null; then eval "$(complete_bundle_bash_command init)"; fi #bundler
source "$HOME/.heroku/plugins/heroku-bash-completion/heroku-completion.bash" #heroku
if brew command command-not-found-init > /dev/null; then eval "$(brew command-not-found-init)"; fi # Use brew command-not-found

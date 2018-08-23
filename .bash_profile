#!/usr/bin/env bash

# Load the shell dotfiles, and then some:
for file in ~/.{aliases,bash_prompt,bash_sources,exports,functions,profile_local}; do
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
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion.d" ]; then
	source "$(brew --prefix)/etc/bash_completion.d"
fi

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Dock Finder QuickLookSatellite Preview quicklookd SystemUIServer Terminal" killall

# Add tab completion for screen sessions
complete -C "perl -e '@w=split(/ /,\$ENV{COMP_LINE},-1);\$w=pop(@w);for(qx(screen -ls)){print qq/\$1\n/ if (/^\s*\$w/&&/(\d+\.\w+)/||/\d+\.(\$w\w*)/)}'" screen

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

[[ -s "/Users/thibaultmaekelbergh/.gvm/scripts/gvm" ]] && source "/Users/thibaultmaekelbergh/.gvm/scripts/gvm"

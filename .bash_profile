# === LOAD OTHER FILES ===
# Doesn't matter on OSX, since every terminal window is a login shell,
# but bash_profile is only run on login shells, 
# bashrc on interactive non-login shells
# So, put common settings stuff in bashrc and source from profile.
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# Load exercism completion
if [ -f ~/.config/exercism/exercism_completion.bash ]; then
    source ~/.config/exercism/exercism_completion.bash
fi

# === ALIASES ===
# - Compilers -
alias gg="gcc -ansi -pedantic -Wall -Wextra -lm" 	# Preferred 'gcc' implementation
alias gpp="g++ -pedantic -Wall -Wextra -lm -std=c++11" 	# Preferred 'gcc' implementation

# - Listing -
alias la="ls -FGA"					# List all
alias ll="ls -FGAlh"				# List long all

# - Navigating -
alias cddoc="cd ~/Documents" 
alias cdprog="cd ~/Documents/prog_Practice" 
alias cdproj="cd ~/Documents/projects" 
alias cdml="cd ~/Documents/ML-coursera"
alias cdpy="cd ~/PyCharmProjects"
alias bnp="cd ~/Documents/projects/kaggle-201602-BNP"

# - Hidden Files -
alias showhidden='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'       # Show hidden files
alias hidehidden='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'       # Hide hidden files

#alias lr="ls -R | grep ":$"
#trash () {command mv "$@" ~/.Trash ;}			# Moves file to trash

# === TERMINAL PROMPT ===
# Function to get current git branch
parse_git_branch() {
    git branch 2> /dev/null | cut -f2 -d\* -s | sed "s/^ / [/" | sed "s/$/]/"
}

#Set Prompt
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ \[\033[31;1m\]\$(parse_git_branch)\[\033[m\] "

# === LS COLORS ===
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


# === PATH ===
# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# added by Anaconda3 2.4.1 installer
export PATH="/Users/fding/anaconda/bin:$PATH"

# Setting PATH for PostgreSQL
PATH="/Library/PostgreSQL/10/bin:${PATH}"
export PATH

# Setting PATH for MySQL
PATH="/usr/local/mysql/bin:${PATH}"
export PATH

# Setting PATH for cmake
PATH="/Applications/CMake.app/Contents/bin:${PATH}"
export PATH

# Setting PATH for exercism
PATH="/Applications/exercism-mac-64bit:$PATH"

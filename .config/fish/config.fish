alias ..='cd ../'
alias ...='cd ../../'

alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'

alias config='/usr/bin/git --git-dir=/home/leet/.cfg/ --work-tree=/home/leet'

alias nv='nvim'

if [ -e /usr/bin/exa ]
	abbr ls 'exa'
	abbr ll 'exa -l'
	abbr la 'exa -la'
else
	abbr ll 'ls -l'
	abbr la 'ls -la'
end


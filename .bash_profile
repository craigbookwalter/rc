# To the extent possible under law, the author(s) have dedicated all
# copyright and related and neighboring rights to this software to the
# public domain worldwide. This software is distributed without any warranty.
# You should have received a copy of the CC0 Public Domain Dedication along
# with this software.
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

# base-files version 4.2-3

# ~/.bash_profile: executed by bash(1) for login shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bash_profile

# Modifying /etc/skel/.bash_profile directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bash_profile) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bash_profile file

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
# if [ -d "${HOME}/bin" ] ; then
#   PATH="${HOME}/bin:${PATH}"
# fi

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH="${HOME}/man:${MANPATH}"
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH="${HOME}/info:${INFOPATH}"
# fi

export PS1="[\u@\h \W]\\$ "

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile


export PS1="\e[0;34m\u [\$(date +%k:%M:%S)]\e[m \n\w> "
export EDITOR='subl'
alias aliases='subl ~/.bash_profile'
alias realias='source ~/.bash_profile'

source /usr/local/bin/troubleshoot.sh
source /usr/local/bin/sql.sh
source /usr/local/bin/cook.sh

#apps
alias browse='/usr/bin/open -a "/Applications/Google Chrome.app"'

#bash commands
alias ls='ls -G -l'
alias hosts='subl /private/etc/hosts'
alias project='subl ~/dev/rcloud/Infrastructure/'
alias dev='cd ~/dev/rcloud/'
alias json='ppjson status.json'
alias sjson='/usr/bin/open -a "/Applications/Google Chrome.app" "status.json"'
alias grep='grep -i --colour'
alias sgrep='grep -B 3 -A 3'
alias done?='json | grep "\"done\" =>"'
alias good?='json | grep \"succeeded\"'
alias failed?='json | grep "failed" -A1 -B2'
alias message='json | grep \"message\"'
alias errors='cat log.txt | grep error -B 3 -A 3'
alias fails='cat log.txt | grep failed -B 3 -A 3'
alias cheferrors='cat chef.log | grep error -B 3 -A 3'
alias cheffails='cat chef.log | grep fail -B 3 -A 3'
alias cstack='cat chef-stacktrace.out'
alias allcheferrors='find . | grep chef | xargs grep "error" -A1 -B3 --colour -i'
alias ctails='find . | grep chef.log | xargs tail -n 1'

#aliases git
alias fetch='git fetch'
alias pull='git pull --rebase'
alias push='git push'
alias st='git status -s'
alias ci='git commit -m'
alias unstage='git reset'
alias diff='git diff HEAD'
alias stage='git add'
alias in='git log master..FETCH_HEAD'
alias out='git log FETCH_HEAD..master'
alias graph='git log --graph --all --decorate'
alias rollback='git reset HEAD~'
alias revert'git reset --hard HEAD'

#aliases network drives
alias tcipdb='mount_smbfs //administrator:Passw0rd@10.71.153.12/c$ ~/dev/tcipdb'
alias denver2='mount_smbfs //uscorp\yasselp@10.71.12.7/users ~/denver2'

#urls
alias jira='browse "https://ultidev/secure/RapidBoard.jspa?rapidView=124&quickFilter=461"'
alias tc='browse "http://teamcity/overview.html"'

#rbenv
eval "$(rbenv init -)"

export PATH=/usr/local/bin:$PATH

#bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi


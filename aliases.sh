#------------------------
# Reminders (use these more)
#------------------------

alias tf='tail -f'
alias timestamp='date +%Y-%m-%d-%H%M%S'

#------------------------
# Mac
#------------------------
alias flush='dscacheutil -flushcache'
alias window='screencapture -iWc'
# Doc spacer
# defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock

#------------------------
# Terminal
#------------------------

alias c='clear'
alias os='uname -a'

#------------------------
# Disk & Files
#------------------------

alias disk='du -h --max-depth=1'
alias la='ls -alh'
alias rd='rm -rf'
alias rf='find . -name'
alias rgrep='find . -type f -print0|xargs -0 grep -s'

#------------------------
# Network
#------------------------

alias HEAD='curl -I'
alias GET='curl '
alias local-ip='ipconfig getifaddr en0'
alias remote-ip='curl ipinfo.io/ip'
alias ipinfo='curl ipinfo.io'
alias eh='sudo subl /etc/hosts'

#------------------------
# Edit
#------------------------
alias mr='subl .'
alias sdot='subl ~/code/dotfiles'
alias s='subl'

#------------------------
# Rails
#------------------------
alias rs='bundle exec rails s'
alias rc='bundle exec rails c'
alias rg='bundle exec rails g'

alias cache='touch tmp/caching-dev.txt'
alias uncache='rm tmp/caching-dev.txt'
alias dj='bundle exec rake jobs:work'

#------------------------
# Directories
#------------------------

# Todd
alias cc='cd ~/code'
alias cg='cd ~/code/gems'
alias ch='cd ~/code/hopville'
alias ct='cd ~/code/pugetive.com'

# FAIR
alias cf='cd ~/code/fair.org'



#------------------------
# Testing
#------------------------
alias t='bundle exec rspec'


#------------------------
# Git
#------------------------
alias ga='git add'
alias gap='git add -p'
alias gb='git branch'
alias gc='git checkout'
alias gm='git merge'
alias gcn='git clean -n'
alias gcf='git clean -f'
alias gd='git diff'
alias gp='git pull'
alias grh='git reset --hard HEAD'
alias gs='git status --short'
alias gu='git reset --soft HEAD^'

alias gpd='git push origin development'
alias stg='git push origin development && cap staging deploy'
alias gpm='git push origin master'
alias csd='cap staging deploy'

alias dev='git checkout development'
alias mas='git checkout master'

alias launch='mas && git merge development && git push origin master && cap production deploy && dev'

alias squash='git rebase -i master'

#------------------------
# Web Server
#------------------------
alias mk='subl ~/.ssh/known_hosts'
alias web-restart='sudo /opt/local/apache2/bin/apachectl restart'
alias web-start='sudo /opt/local/apache2/bin/apachectl start'
alias web-stop='sudo /opt/local/apache2/bin/apachectl stop'
alias web-free='lsof -i tcp:3000 -Fp|tr -d p|xargs kill -9'

#------------------------
# Fat Fingering
#------------------------
alias emacs="echo 'type that again, subliminal man'"
alias rgrpe='rgrep'
alias mroe='more'

#------------------------
# Chopping Block
#------------------------

alias cuke='cucumber --format pretty'
alias spec='/opt/local/bin/spec --options ~/spec.opts'

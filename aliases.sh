#------------------------
# Reminders (use these more)
#------------------------

alias tf='tail -f'
alias timestamp='date +%Y-%m-%d-%H%M%S'

#------------------------
# Mac
#------------------------
alias flush='sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache'
alias window='screencapture -iWc'
# Doc spacer
alias spacer='defaults write com.apple.dock persistent-apps -array-add '"'"'{"tile-type"="spacer-tile";}'"'"'; killall Dock'

# alias brew='sudo -Hu homebrew brew'

#------------------------
# Terminal
#------------------------

alias c='clear'
alias os='uname -a'
alias key='ssh-add --apple-use-keychain ~/.ssh/id_rsa'

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

#------------------------
# Edit
#------------------------
alias eh='sudo code /etc/hosts'
alias ed='code ~/code/dotfiles'
alias ez='code ~/.zshrc'
alias dot='source ~/.zshrc'

e()
{
   if
     (( $# )) # True if at least one argument present
   then
     command code $@
   else
     command code .
   fi
}

#------------------------
# Rails
#------------------------
alias rs='bundle exec rails s'
alias rc='bundle exec rails c'
alias rg='bundle exec rails g'
alias bd='./bin/dev'

alias cache='rails dev:cache'
alias dj='bundle exec rake jobs:work'

#------------------------
# React
#------------------------
alias rr="npm start --prefix client"
alias tt="npm run test --prefix client"
alias ni="npm install --prefix client"

#------------------------
# React Native
#------------------------

alias i8='react-native run-ios --simulator="iPhone 8"'

#------------------------
# Python / Django
#------------------------
alias python='/Users/grapevine/.pyenv/shims/python'
# alias python="python3.8"
# alias pip="pip3.8"


#------------------------
# Dev Directories
#------------------------

# Todd
alias cc='cd ~/code'
alias ct='cd ~/code/todd/toddgehman.com'
alias ca='cd ~/code/todd-api'
alias tsa='cd ~/code/todd/todd-suite-api'
alias tsr='cd ~/code/todd/todd-suite-react'

# FAIR
alias cf='cd ~/code/fair.org'

# Grapevine
# alias cg='cd ~/code/grapevine'
alias gvs='cd ~/code/amp-server'
alias gvc='cd ~/code/amp-client'

alias ws='pipenv run ./manage.py runserver 5000'
alias cs='npm run ng serve'

alias migrat='pipenv run ./manage.py makemigrations'
alias migrate='pipenv run ./manage.py migrate'

alias db='psql grapevine_staging'
#------------------------
# Testing
#------------------------
alias t='bundle exec rspec --format documentation'
alias rt='npm run test'
alias ht='HEADLESS=true rspec -r turnip/rspec ./spec/features/'
alias htf='HEADLESS=true rspec -r turnip/rspec ./spec/features/ --fail-fast'
alias mt='rake test'

#------------------------
# Git
#------------------------
alias ga='git add'
alias gap='git add -p'
alias gb='git branch'
# alias gc='git checkout' #used for work instead
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

alias dev='git checkout dev'
alias mas='git checkout master'
alias stag='git checkout staging'

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
alias rgrpe='rgrep'
alias mroe='more'

#------------------------
# Chopping Block
#------------------------
# alias emacs="echo 'type that again, subliminal man'"
# alias cuke='cucumber --format pretty'
# alias spec='/opt/local/bin/spec --options ~/spec.opts'
# alias edit='open -fe'
# alias ch='cd ~/code/hopville'
# alias cn='cd ~/code/Narc'
# alias subl="echo 'oops...please get addicted to e'"

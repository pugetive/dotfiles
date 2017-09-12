#------------------------
# Reminders (use these more)
#------------------------

alias tf='tail -f';
alias timestamp='date +%Y-%m-%d-%H%M%S';

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

alias c='clear';

#------------------------
# Disk & Files
#------------------------

alias disk='du -h --max-depth=1'
alias la='ls -alh';
alias rd='rm -rf'
alias rf='find . -name';
alias rgrep='find . -type f -print0|xargs -0 grep -s';

#------------------------
# Network
#------------------------

alias HEAD='curl -I';
alias local-ip='ipconfig getifaddr en0'
alias remote-ip='curl ifconfig.me'
alias eh='sudo subl /etc/hosts'

#------------------------
# Edit
#------------------------
alias mr='subl .'
alias sdot='subl ~/Sites/dotfiles'
alias s='subl'
alias en='subl nomad.sublime-project'

# alias C 'eval "if (\!* =~ *.c) then \\
#    echo "C quitting: no .c on end of \!* please." \\
# else \\
#    if (-e \!*) mv \!* \!*.old \\
#    echo \!*.c SENT TO cc \\
#    cc -s \!*.c -o \!* \\
#    if (-e \!*) chmod 311 \!* \\
# endif"'

#------------------------
# Rails
#------------------------
alias rs='bundle exec rails s'
alias rc='bundle exec rails c'
alias rr='bundle exec rails r'
alias rg='bundle exec rails g'

alias cache='find tmp/cache/* -type d|grep -v assets|grep -v sass|xargs rm -rf'

#------------------------
# Directories
#------------------------

# Todd
alias cs='cd ~/Sites';
alias ch='cd ~/Sites/hopville'
# alias ck='cd ~/Sites/killer'
# alias cg='cd ~/Sites/styleguides'
# alias ct='cd ~/Sites/pugetive.com'
alias ct='cd ~/Sites/toddgehman.com'
alias cf='cd ~/Sites/fair.org'

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
alias gpm='git push origin master'
alias csd='cap staging deploy'

alias dev='git checkout development'
alias mas='git checkout master'
alias stagger='git push origin development && cap staging deploy'
alias stg='git push origin development && cap staging deploy'

#------------------------
# Web Server
#------------------------
alias mh='sudo subl /etc/hosts'
alias mk='subl ~/.ssh/known_hosts'
alias web-restart='sudo /opt/local/apache2/bin/apachectl restart'
alias web-start='sudo /opt/local/apache2/bin/apachectl start'
alias web-stop='sudo /opt/local/apache2/bin/apachectl stop'
alias web-free='lsof -i tcp:3000 -Fp|tr -d p|xargs kill -9'

#------------------------
# Fat Fingering
#------------------------
alias emacs="echo 'type that again, subliminal man'";
alias rgrpe='rgrep'
alias mroe='more'


#------------------------
# Chopping Block
#------------------------

alias watch-css='sass --watch public/stylesheets/_sass:public/stylesheets --style=compressed'
alias cuke='cucumber --format pretty'
alias spec='/opt/local/bin/spec --options ~/spec.opts'
alias t='rake spec';

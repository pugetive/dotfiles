autoload -U colors && colors
autoload -Uz vcs_info


zstyle ':vcs_info:*' stagedstr ' %F{green}▲'
zstyle ':vcs_info:*' unstagedstr ' %F{yellow}▼'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn
theme_precmd () {
    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
        zstyle ':vcs_info:*' formats ' %b%c%u'
    } else {
        zstyle ':vcs_info:*' formats ' %b%c%u%B %F{red}▼'
    }

    vcs_info
}

function ruby_version()
{
    if which rvm-prompt &> /dev/null; then
      rvm-prompt i v g
    else
      if which rbenv &> /dev/null; then
        rbenv version | sed -e "s/ (set.*$//"
      fi
    fi
}

setopt prompt_subst
PROMPT='
%b$FG[250]%n%b$FG[012] %b$FG[081]%-3~ %B$FG[081]%c%b %F{blue}$(ruby_version)%F{magenta}${vcs_info_msg_0_}
%B%F{white} ♫  %b$FG[189]'

#☼
# ♫

autoload -U add-zsh-hook
add-zsh-hook precmd  theme_precmd

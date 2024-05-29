autoload -Uz vcs_info

zstyle ':vcs_info:*' stagedstr '%F{green}●'
zstyle ':vcs_info:*' unstagedstr '%F{yellow}●'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn
theme_precmd () {
    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
        zstyle ':vcs_info:*' formats ' [%b%c%u%B%F{green}]'
    } else {
        zstyle ':vcs_info:*' formats ' [%b%c%u%B%F{red}●%F{green}]'
    }

    vcs_info
}

setopt prompt_subst

PROMPT='%(?, ,%F{red}FAIL: $?%{$reset_color%}
)
%F{magenta}%n%{$reset_color%}@%F{yellow}%m %{$fg[green]%}[%*]%{$reset_color%}%{$reset_color%}: %B%F{blue}%~ %B%F{green}${vcs_info_msg_0_}%f%b $(kube_ps1)
%% '

autoload -U add-zsh-hook
add-zsh-hook precmd  theme_precmd

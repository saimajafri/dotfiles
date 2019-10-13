if [[ -z $ZSH_THEME_SAIMA_PREFIX ]]; then
    ZSH_THEME_SAIMA_PREFIX='❤︎'
fi

PROMPT='%{$fg_bold[magenta]%}$ZSH_THEME_SAIMA_PREFIX%{$fg_bold[green]%}%p %{$fg[green]%}%c %{$fg_bold[magenta]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}] %{$fg[yellow]%}⚡ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}]"

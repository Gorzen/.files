# Prompt
autoload -Uz colors && colors;

my_prompt=""

local p_hostname=""
local red="$fg[red]"

if [[ "$(hostname)" = "lulu-Latitude-7490" ]];
then
        p_hostname=""
else
        p_hostname="%{$fg[green]%}$(hostname)%{$reset_color%}:"
fi

LOCATION="%{$fg[yellow]%}%~%{$reset_color%}"


my_prompt+="$p_hostname"
my_prompt+="$LOCATION"
#my_prompt+=" %(!.#.%%) "

#PROMPT='${my_prompt} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
PROMPT='${my_prompt}$(git_prompt_info)%{$FG[202]%}%(1j. %j.)%{$reset_color%} %(!.#.%%) '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}@ %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}x%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}"

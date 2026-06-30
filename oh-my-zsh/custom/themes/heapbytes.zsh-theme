#Author : Heapbytes <Gourav> (https://github.com/heapbytes)

PROMPT='
%F{cyan}┌─[%F{blue} %~%f%F{cyan}] %f$(git_prompt_info)
%F{cyan}└─➜%f '

#RPROMPT='[%F{red}%??%f]'

get_ip_address() {
    if [[ -n "$(ifconfig tun0 2>/dev/null)" ]]; then
        # echo "%{$fg[green]%}$(ifconfig tun0 | awk '/inet / {print $2}')%{$reset_color%}"
    else
        local ip=$(ip -4 addr | awk '/inet/ && $2 !~ /^127/ {print $2}' | cut -d/ -f1 | head -n1)
        if [[ -n "$ip" ]]; then
            echo "%{$fg[green]%}$ip%{$reset_color%}"
        else
            echo "%{$fg[red]%}No IP%{$reset_color%}"
        fi
    fi
}

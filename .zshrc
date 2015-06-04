autoload -U colors && colors
PROMPT="%{$fg[cyan]%}%~%{$reset_color%}%{$fg[red]%} ->%{$reset_color%} "
export PATH="$PATH:$HOME/.rvm/bin:/usr/local/mysql/bin" # Add RVM to PATH for scripting
function wftt {
    echo -ne "\033]0;"$*"\007"
        echo "success..."
            `sleep 1` && clear

}


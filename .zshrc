########################################################
##################### MY PROFILE #######################
########################################################

blue1=$(tput setaf 045);
blue2=$(tput setaf 051);
green=$(tput setaf 050);
purple=$(tput setaf 132);
purple2=$(tput setaf 200);
red=$(tput setaf 197);
white=$(tput setaf 15);
orange=$(tput setaf 166);
yellow=$(tput setaf 191);
green=$(tput setaf 71);
reset=$(tput setaf sgr0);

parse_git_branch(){
    branch=$( git branch 2> $HOME/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]▶ /')
    echo $branch
}

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Enable substitution in the prompt.
setopt prompt_subst

# Config for prompt. PS1 synonym.
prompt=$'\n';
prompt+="${red}%D %*";
prompt+="${purple2} | ";
prompt+="${blue1}%n";
prompt+="${purple2}@";
prompt+="${purple}%M";
prompt+="${purple2}:";
prompt+='${yellow} $(parse_git_branch)';
prompt+="${green}%/";
prompt+=$'\n';
prompt+="⚡ %f";

########################################################
########################################################
########################################################

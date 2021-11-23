# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias tl='tail -f /var/log/httpd/error.log';
alias cdd='cd /var/www/cgi-bin';


# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# -----------------------
# Prompt mods
# -----------------------
# Hostname in green (from 256 color chart)
PS1="$(tput setaf 118)orion_web \w";
PS1+=" $(tput sgr0): ";
export PS1;

# Quick edit bash
alias eb='vi ~/.bashrc';
alias sb='source ~/.bashrc';

function replaceFile () {
  cat /dev/null > $1 && vi $1;
}

alias rf='replaceFile';

function updateSrc () {
    wget https://orion-src.s3.us-east-2.amazonaws.com/orion-prod.zip -P /tmp
    unzip -o -u /tmp/orion-prod.zip -d /var/www/
    rm -f /tmp/orion-prod.zip
}

alias eb='vi ~/.bashrc';
alias sb='source ~/.bashrc';


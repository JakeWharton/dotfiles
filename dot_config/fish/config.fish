# Disable the greeting.
set fish_greeting

set -gx EDITOR "subl -n -w"

set -gx ANDROID_HOME $HOME/Library/Android/sdk

alias ll="gls -vAhlF --color --group-directories-first"
alias grep="grep --color=auto -n -I"

function jdk
  set -gx JAVA_HOME $(/usr/libexec/java_home -v $argv[1]);
  java -version
end

starship init fish | source

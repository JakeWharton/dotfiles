function gw --wraps=gradle
  set -l GW "$(upfind gradlew)"
  if [ -z "$GW" ]
    echo "Gradle wrapper not found."
  else if contains -- "-p" $argv
    $GW --profile --parallel $argv
  else
    $GW -p $(dirname $GW) --profile --parallel $argv
  end
end

alias ga="gw assemble"
alias gb="gw build"
alias gca="gw clean assemble"
alias gcb="gw clean build"

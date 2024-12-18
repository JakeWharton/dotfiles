function brew-update
  brew update -q
  echo && brew outdated --greedy
end

function brew-upgrade
  HOMEBREW_NO_INSTALL_CLEANUP=true brew upgrade --greedy
  brew cleanup
end

eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="/opt/homebrew/opt/curl/bin:$PATH" # Use homebrew curl before system
export PATH="/opt/homebrew/opt/rsync/bin:$PATH" # Use homebrew rsync before system

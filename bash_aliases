# Bash aliases

## Git
alias ga='git add'
alias gb='git branch -v'
alias gc='git commit -m'
alias gca='git commit -am'
alias gl='git log'
alias gs='git status'
alias gpo='git push origin'

### Git autocompletion
#### automate? https://stackoverflow.com/a/55990815
if [ -f "/usr/share/bash-completion/completions/git" ]; then
  . /usr/share/bash-completion/completions/git
  __git_complete ga _git_add
  __git_complete gpo _git_branch
else
  echo "Error loading git completions"
fi


## Laravel
alias a='php artisan'
alias at='php artisan tinker'
alias ao='php artisan optimize'


## Windows WSL
if [ ! -z "$(uname -a | grep 'Microsoft')" ]; then
  alias docker='docker.exe'
  alias docker-compose='docker-compose.exe'
fi

## Docker
alias dps='docker ps -a'
alias dex='docker exec -it'
alias dlo='docker logs -t -f'
alias drm='docker rm $(docker ps -a -q)'


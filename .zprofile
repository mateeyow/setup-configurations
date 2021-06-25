alias rm-modules="find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' "

export OPENSSL_INCLUDE_DIR="$(brew --prefix openssl)/include"
export OPENSSL_LIB_DIR="$(brew --prefix openssl)/lib"
export cg="$HOME/Tools/pyfarm-cage"
export cape="$HOME/Work/cape"
export gcape="$HOME/go/src/github.com/biqmind"
export k8="$HOME/Tools/biqmind-k8s"
export tree="$HOME/Personal/treeftly"
#export KUBECONFIG="$(k3d get-kubeconfig --name='biqmind')"
export GOPATH=$HOME/go
export GOROOT=/usr/local/Cellar/go/1.14.3/libexec
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$HOME/Work/lab/maven/bin:$HOME/.cargo/bin:$PATH:$GOPATH/bin:/usr/local/opt/python@3.8/bin:/Users/matthewtorres/Library/Python/3.8/bin"
export LDFLAGS="-L/usr/local/opt/python@3.8/lib"
export PKG_CONFIG_PATH="/usr/local/opt/python@3.8/lib/pkgconfig"
export BIQMIND_USER=deployer@biqmind.com
export BIQMIND_PASSWORD=B1qm1ndW1ns

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#nvm use --delete-prefix default

py () {
   ( cd $HOME/Tools/pyfarm-cage && cage ${1:-help} "${@:2}")
}

alias pyl="py logs -f"
alias pys="py status"
alias pyr="py restart"
alias k=kubectl
alias kcd="kubectl config set-context --current --namespace"
alias rmmodules="find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \;"
alias ops="/usr/local/bin/operator-sdk"

function cheat() {
  curl cht.sh/$1
}

function kcls() {
  export KUBECONFIG="$(k3d kubeconfig write $1)"
}

funcition portkill() {
  lsof -i:$1 | awk '{print $2}' | tail -n +2 | xargs -I% kill -9 %
}

#source <(kubectl completion zsh)

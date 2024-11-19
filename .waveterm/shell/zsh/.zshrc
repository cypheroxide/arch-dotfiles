
# Source the original zshrc
[ -f ~/.zshrc ] && source ~/.zshrc

export PATH="/home/cypheroxide/.waveterm/bin":$PATH
if [[ -n ${_comps+x} ]]; then
  source <(wsh completion zsh)
fi

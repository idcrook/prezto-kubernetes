# -*- mode: sh; eval: (sh-set-shell "zsh") -*-
#
# Sets kubernetes aliases. Supports kubectl completions.
#
# Authors:
#   David Crook <idcrook@users.noreply.github.com>
#

# Return if requirements are not found.
if (( ! ${+commands[kubectl]} )); then
  return 1
fi

# Load dependencies.
#pmodload 'helper'

# Enable completion for 'kubectl'.
cache_file="${XDG_CACHE_HOME:-$HOME/.cache}/prezto/kubernetes-cache.zsh"
kubectl_command="${commands[kubectl]}"

if [[ "${kubectl_command}" -nt "${cache_file}" || ! -s "${cache_file}" ]]; then
  ${kubectl_command} completion zsh >! "${cache_file}" 2> /dev/null
fi

source "${cache_file}"
unset cache_file kubectl_command

#
# Aliases
#

# Some platforms may require this (e.g., typical k3s install)
#alias kubectl="sudo kubectl"

alias kbk="kubectl"
alias kbn="kubectl  --namespace=kube-system"
# alias kbi="kubectl  --namespace=ingress-nginx"
# alias kbf="kubectl  --namespace=openfaas"
# alias kbfn="kubectl --namespace=openfaas-fn"

alias kbkd='kubectl describe'
alias kbkg='kubectl get'
alias kbkl='kubectl logs'
alias kbklf='kubectl logs --follow'

# FIXME: fix completion for "watch" alias
#alias wkbk='watch -n 1 kubectl describe pod '

# kbnn () {
#   kubectl config set-context $(kubectl config current-context) --namespace=$1
# }

# # name formatting
# zstyle ':prezto:module:contrib-kubernetes' dev-clusters-default 'dev'

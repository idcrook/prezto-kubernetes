prezto-kubernetes
=================

Kubernetes aliases module for prezto. Also loads/caches the `zsh` completions for `kubectl`.

Aliases that @idcrook uses for kubernetes, originally in BASH

Install
-------

To use, the module directory needs to be found in `pmodule-dirs`, so e.g. in `zpreztorc`:

```diff
 # Add additional directories to load prezto modules from
-# zstyle ':prezto:load' pmodule-dirs $HOME/.zprezto-contrib
+zstyle ':prezto:load' pmodule-dirs $HOME/.zprezto-contrib
```

It could also be placed in `/contrib` or `/modules` which are already in default `pmodule-dirs`.

```shell
cd $HOME/.zprezto-contrib
git clone https://github.com/idcrook/prezto-kubernetes.git kubernetes
# or alternatively
git submodule add https://github.com/idcrook/prezto-kubernetes.git kubernetes
```

Configure
---------

The module itself (above cloned to be named `kubernetes`) needs to be explicitly loaded in `${ZDOTDIR:-$HOME}/.zpreztorc`

Modules are loaded via `zstyle ':prezto:load' pmodule`

```
  ...
       'utility' \
       'completion' \
       'kubernetes' \
  ...
```

In mine, I've loaded it after `completion` module.

Aliases
-------

-	`kbk` `kubectl` base
-	`kbn` with `kube-system` namespace

#### Subcommand aliases

-	`kbkd` describe
-	`kbkg` get
-	`kbkl` logs
-	`kbklf` logs --follow

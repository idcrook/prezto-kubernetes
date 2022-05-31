prezto-kubernetes
=================

Kubernetes aliases module for prezto. Also loads/caches the `zsh` completions for `kubectl`.

Aliases that @idcrook uses for kubernetes, originally in BASH

Install
-------

```shell
cd $HOME/.zprezto-contrib
git clone https://github.com/idcrook/prezto-kubernetes.git kubernetes
# or alterenatively
git submodule add https://github.com/idcrook/prezto-kubernetes.git kubernetes
```

Configure
---------

To use, the module directory needs to be found in `pmodule-dirs`, so e.g. in `zpreztorc`:

```diff
 # Add additional directories to load prezto modules from
-# zstyle ':prezto:load' pmodule-dirs $HOME/.zprezto-contrib
+zstyle ':prezto:load' pmodule-dirs $HOME/.zprezto-contrib
```

It could also be in `/contrib` or `/modules` which are already in default `pmodule-dirs`.

The module itself also needs to be explicitly loaded in `${ZDOTDIR:-$HOME}/.zpreztorc` in your `zstyle ':prezto:load' pmodule` settings.

### Aliases

-	`kbk` `kubectl` base
-	`kbn` with `kube-system` namespace

#### Subcommand aliases

-	`kbkd` describe
-	`kbkg` get
-	`kbkl` logs
-	`kbklf` logs --follow

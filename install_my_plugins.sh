#!/bin/bash

sh install_awesome_vimrc.sh

if [ ! -d my_plugins ]; then
  mkdir my_plugins
fi
cd my_plugins

for pl in git@github.com:davidhalter/jedi-vim.git \
          git@github.com:vim-scripts/ReplaceWithRegister.git \
          git@github.com:Quramy/tsuquyomi.git \
          git@github.com:leafgarland/typescript-vim.git \
          git@github.com:Quramy/vim-dtsm.git \
          git@github.com:jason0x43/vim-js-indent.git \
          git@github.com:Quramy/vim-js-pretty-template.git \
          git@github.com:mhartington/vim-typings.git; do
  git clone $pl
done


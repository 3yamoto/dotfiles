#!/bin/sh

for f in .??*
do
  [[ ${f} = ".git" ]] && continue
  [[ ${f} = ".gitignore" ]] && continue
  ln -snfv $(pwd)/${f} ~/${f}
done


#!/bin/bash
# cmps101-pt.s18 grading
# usage: pa2.sh
# (run within your pa2 directory to test your code)

SRCDIR=https://raw.githubusercontent.com/legendddhgf/cmps101-pt.s18.grading/master/pa2

EXE_ALL=(pa2-func-check.sh pa2-unit-check.sh pa2-make-check.sh)
for script in EXE_ALL; do
  curl $SRCDIR/$script > $script
  chmod +x $script
  ./$script
  rm -f $script
done

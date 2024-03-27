export OPAMROOT=/home/opam/.opam

su opam -c "opam exec -- python3 scripts/tester.py --algorithm worklist-rr \
         || opam exec -- python3 scripts/tester.py --algorithm worklist-rpo "

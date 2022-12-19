#!/bin/sed -Enf  

# intended for use with: lsof -nP -Fnst

# <2022-12-18> Works!
# TODO: reduce!

/^n.$/{s/n.//;H;x;s/^\n//;s/\n/|/g;P;D}
/^n/{H;s/.//g;x;s/^\n//;s/\n/|/g;P;D}
/^n.$/!{H}
$p

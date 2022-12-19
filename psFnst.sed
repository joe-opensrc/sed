#!/bin/sed -Enf  

# intended for use with: lsof -nP -Fnst

# <2022-12-18> Works!
# TODO: reduce!
#   - z replaces 's/.//g'; but is gnu specific

/^n/{H;z;x;s/^\n//;s/\n/|/g;P;D}
/^n/!{H}
$p

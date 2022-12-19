#!/bin/sed -Enf 

# p103753
# fcwd
# tDIR
# s4096
# n.

1i{ "lsof": [
/^p/{ s/^p(.*)/{"pid":   \1,/   ;p;D}
/^f/{ s/^f(.*)/ "file": "\1",/  ;p;D}
/^t/{ s/^t(.*)/ "type": "\1",/  ;p;D}
/^s/{ s/^s(.*)/ "size":  \1,/   ;p;D}
/^n/{ s/^n(.*)/ "name": "\1" }/ ;p}
$!i,
$i]}




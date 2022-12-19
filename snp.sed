#!/bin/sed -nf 

$!{H};${x;s/^\n//;s/\n/|/g;p}

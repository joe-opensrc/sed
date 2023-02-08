#!/bin/sed -nf 

# not memory efficient! 

H
${x;s/^\n//;s/\n/|/g;p}

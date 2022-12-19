#!/bin/sed -nf 
:.;$p;:^;N;$!b^;s/\n/|/g; t.;

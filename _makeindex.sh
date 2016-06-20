#!/bin/sh
start=`pwd`
for directory in `find $1 -type d`
do
  cd ${directory} && ls | grep -v index.html | perl -e 'print "<html><body><ul>"; while(<>) { chop $_;  print "<li><a href=\"./$_\">$_</a></li>";} print "</ul></body></html>"' > index.html
  cd ${start}
done

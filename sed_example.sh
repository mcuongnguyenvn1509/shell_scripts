#!/bin/sh

 #find . -type f | xargs sed -i 's/tVoid/void/g;'

 replacements=(
     tVoid:void
     sentence:word
     will:need to
     converted:repalced
     to:with
     words:alphabets
 )

 for row in "${replacements[@]}"; do
     original="$(echo $row | cut -d: -f1)";
     new="$(echo $row | cut -d: -f2)";
     sed -i -e "s/${original}/${new}/g" data.txt;
     //find $arg -type f | xargs sed -i "s/\b${original}\b/${new}/gi" ;
 done

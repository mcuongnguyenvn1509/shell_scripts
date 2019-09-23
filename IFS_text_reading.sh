#!/bin/bash
 file=domains.txt

 # set the Internal Field Separator to |
 IFS='|'
 while read -r ID name solution
 do
         ID=$(echo $ID | sed 's/^[ \t]*//;s/[ \t]*$//')
         printf "***Reading %s to repalce the source code...\n" $ID
         name=$(echo $name | sed 's/^[ \t]*//;s/[ \t]*$//')
         solution=$(echo $solution | sed 's/^[ \t]*//;s/[ \t]*$//')
         printf "\"%s\" replacing by "%s" ...\n" $name $solution

 done < "$file"

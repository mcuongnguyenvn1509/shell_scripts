#!/bin/bash
 [ $# -eq 0 ] && { echo "Usage: $0 PATH_TO"; exit 1; }
 arg="$1"
 file=domains.txt

 # set the Internal Field Separator to |
 IFS='|'
 while read -r line ID name solution
 do
         [[ "$line" =~ ^#.*$ ]] && continue
         ID=$(echo $ID | sed 's/^[ \t]*//;s/[ \t]*$//')
         printf "***Reading %s to repalce the source code...\n" $ID
         name=$(echo $name | sed 's/^[ \t]*//;s/[ \t]*$//')
         solution=$(echo $solution | sed 's/^[ \t]*//;s/[ \t]*$//')
         printf "\"%s\" replacing by \"%s\" ...\n" $name $solution

 done < "$file"

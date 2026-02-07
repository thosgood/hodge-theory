#!/bin/bash

declare -a volumes=("hodge-theory-i"
                    "hodge-theory-ii"
                    "hodge-theory-iii")

for file in "${volumes[@]}"
do
  cp ../output/"$file".xml .
  xsltproc book.xsl "$file".xml > "$file".tex
done

# TO-DO: replace `` and '' by " and "

cp ../output/hodge-theory-bibliography.xml .
xsltproc bibliography.xsl hodge-theory-bibliography.xml > hodge-theory-bibliography.bib

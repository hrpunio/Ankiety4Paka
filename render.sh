#!/bin/bash
# https://bookdown.org/yihui/rmarkdown-cookbook/rmarkdown-render.html

for i in $*; do
echo "Rendering $i"

RMDFILE=$i
FILE=`basename $RMDFILE .Rmd`

if [ -f "${FILE}.Rmd" ] ; then

Rscript -e "require(knitr); require(rmarkdown);  rmarkdown::render('${FILE}.Rmd', output_format='all')"
##
##lualatex ${FILE}.tex

else

echo "!! $FILE not found !!"

fi

rm *.tex *.aux

##cp -f *csv *pdf *html ./Ready
##zip -rp ./Ready Ready.zip

done

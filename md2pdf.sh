#!/bin/bash

MDFILE="exercices_libres.md"
HTMLFILE="exercices_libres.html"
PDFILE="exercices_libres.pdf"
#prince $HTMLFILE -s style_print.css -o $PDFILE --verbose --input=HTML


multimarkdown $MDFILE --smart  --full -o $HTMLFILE
prince $HTMLFILE -s style_print.css -o $PDFILE --verbose --input=HTML
open $PDFILE

strings $PDFILE | grep BaseFont




# LCPATH="/Users/nico/Documents/programmation/epfl_mooc_initiation_microcontroleurs/cours-epfl-mooc-initiation-microcontroleurs-arduino"

# for LCNB in 2 5 6 7
# do
# 	MDFILE="$LCPATH/LC$LCNB/LC$LCNB.md"
# 	HTMLFILE="$LCPATH/LC$LCNB/LC$LCNB.html"
# 	PDFILE="LC$LCNB.pdf"
# 	echo $MDFILE

# 	multimarkdown $MDFILE --smart  --full -o $HTMLFILE

# 	prince $HTMLFILE -s style_print.css -o $PDFILE

# 	rm $HTMLFILE

# 	open $PDFILE
# done


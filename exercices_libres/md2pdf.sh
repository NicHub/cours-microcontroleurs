#!/bin/bash

MDFILE="exercices_libres.md"
HTMLFILE="exercices_libres.html"
tempHTMLFILE="/tmp/$HTMLFILE"
PDFILE="exercices_libres.pdf"


multimarkdown $MDFILE   --full -o $HTMLFILE
sed 's/&#8230;/.../g' $HTMLFILE > $tempHTMLFILE && mv $tempHTMLFILE $HTMLFILE

# Carctère en police Symbol
#sed 's/⋅/./g' $HTMLFILE > $tempHTMLFILE && mv $tempHTMLFILE $HTMLFILE
#sed 's/⇒/->/g' $HTMLFILE > $tempHTMLFILE && mv $tempHTMLFILE $HTMLFILE

prince $HTMLFILE -s style_print.css -o $PDFILE --verbose --input=HTML
open $PDFILE

strings $PDFILE | grep BaseFont


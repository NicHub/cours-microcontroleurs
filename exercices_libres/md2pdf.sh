#!/bin/bash

MDFILE="exercices_libres.md"
HTMLFILE="exercices_libres.html"
PDFILE="exercices_libres.pdf"

multimarkdown $MDFILE --smart  --full -o $HTMLFILE
prince $HTMLFILE -s style_print.css -o $PDFILE --verbose --input=HTML
open $PDFILE

strings $PDFILE | grep BaseFont


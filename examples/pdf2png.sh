#!/bin/bash

cp ../akkoord.sty .
latexmk
latexmk -c
convert -density 300 example_c7.pdf -quality 90 example_c7.png
convert -density 300 example_c-7.pdf -quality 90 example_c-7.png
convert -density 300 example_gmaj7.pdf -quality 90 example_gmaj7.png
convert -density 300 example_d.pdf -quality 90 example_d.png

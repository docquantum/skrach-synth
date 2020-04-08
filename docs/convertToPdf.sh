#!/bin/sh

if [ -z "$1" ]; then
	echo "No argument supplied"
fi

pandoc $1 --pdf-engine=xelatex -o $(echo $1| cut -d'.' -f 1).pdf

#!/bin/sh

function mkcols {
    grep -E "^[abcdefoilszABCDEFOILSZ]{$1}\$" /usr/share/dict/${2:-words} | sed 's/o\|O/0/g' | sed 's/i\|I/1/g' | sed 's/s\|S/5/g' | sed 's/l\|L/1/g' | sed 's/z\|Z/2/g' | tr '[:lower:]' '[:upper:]' | sort -u | sed 's/.*/<div><span style="height:50px;width:100px;display:inline-block;text-align:right;background:#&">&<\/span><span style="color:#&;display:inline-block;margin-left:10px">&<\/span><\/div>/g'
}

echo '<!doctype html><title>F0111A</title>'

mkcols 3 "$1"
mkcols 6 "$1"


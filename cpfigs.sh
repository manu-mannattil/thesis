#!/usr/bin/env bash

killall -9 gvim pdflatex biber bibtex perl &>/dev/null

make distclean
make thesis.pdf

[[ -d "figuresx" ]] || mv "figures" "figuresx"

sed -n 's|^<figures/\([^,]*\),.*$|\1|p' thesis.log |
while IFS= read -r fig
do
    src="figuresx/$fig"
    tar="figures/$fig"

    mkdir -p "$(dirname "$tar")"

    if [[ -f "$src" ]] 
    then
        if [[ -h "$src" ]] 
        then
            truesrc=$(readlink -ne -- "$src")
            if [[ "$truesrc" ]]
            then
                cp -vf "$truesrc" "$tar"
            fi
        else
            cp -vf "$src" "$tar"
        fi
    fi
done

echo "total figures =" $(sed -n 's|^<figures/\([^,]*\),.*$|\1|p' thesis.log | wc -l)

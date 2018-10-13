find ./ -iname "*.md" -type f -exec sh -c 'pandoc "${0}" -o "${0%.md}.pdf" --template eisvogel.latex --listings --from=gfm --pdf-engine=xelatex' {} \;

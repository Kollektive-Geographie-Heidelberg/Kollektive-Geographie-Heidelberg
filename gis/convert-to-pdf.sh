find ./ -iname "*.md" -type f -exec sh -c 'pandoc "${0}" -o "${0%.md}.pdf" --from=gfm --pdf-engine=xelatex -V lang=de --template eisvogel.latex --listings --numbered-sections' {} \;

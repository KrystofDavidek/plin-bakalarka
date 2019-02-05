#!/bin/bash

echo -e "\n\n### Converting Markdown to LaTeX ###\n\n"

for FILE in src/*.md; do
  pandoc ${FILE} -o "${FILE%.md}.tex"
  vlna -r -l -v KkSsVvZzOoUuAaIi "${FILE%.md}.tex"
  sed -ie 's/\s\\parencite/~\\parencite/g' "${FILE%.md}.tex"
  sed -ie 's/\\section/\\chapter/g' "${FILE%.md}.tex"
  sed -ie 's/\\subsection/\\section/g' "${FILE%.md}.tex"
  sed -ie 's/\\subsubsection/\\subsection/g' "${FILE%.md}.tex"
  sed -ie 's/\\paragraph/\\subsubsection/g' "${FILE%.md}.tex"
  sed -ie 's/\s\\%/\~\\%/g' "${FILE%.md}.tex"

  sed -ie 's/\\chapter{Úvod}\\label{uxfavod}/'\
'\\chapter\*{Úvod}\\label{uvod}\n\\addcontentsline{toc}{chapter}{Úvod}/g' "${FILE%.md}.tex"

  sed -ie 's/\\chapter{Závěr}\\label{zuxe1vux11br}/'\
'\\chapter\*{Závěr}\\label{zaver}\n\\addcontentsline{toc}{chapter}{Závěr}/g' "${FILE%.md}.tex"


  rm "${FILE%.md}.texe"
done





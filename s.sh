#!/bin/bash

echo -e "\n\n### Converting Markdown to LaTeX ###\n\n"

rm tex/*

for FILE in markdown/*.md; do
  pandoc ${FILE} -o "${FILE%.md}.tex"
  vlna -r -l -v KkSsVvZzOoUuAaIi "${FILE%.md}.tex"
  sed -ie 's/\s\\parencite/~\\parencite/g' "${FILE%.md}.tex"
  sed -ie 's/\\section/\\chapter/g' "${FILE%.md}.tex"
  sed -ie 's/\\subsection/\\section/g' "${FILE%.md}.tex"
  sed -ie 's/\\subsubsection/\\subsection/g' "${FILE%.md}.tex"
  sed -ie 's/\\paragraph/\\subsubsection/g' "${FILE%.md}.tex"
  sed -ie 's/\s\\%/\~\\%/g' "${FILE%.md}.tex"
  sed -ie 's/afixů\s*„/afixů „/g' "${FILE%.md}.tex"
  sed -ie 's/--\\textgreater{}/\$\\rightarrow\$/g' "${FILE%.md}.tex"
  sed -ie 's/\\textless{}\$\\rightarrow\$/\$\\leftrightarrow\$/g' "${FILE%.md}.tex"

  sed -ie 's/\\chapter{Úvod}\\label{uxfavod}/'\
'\\chapter\*{Úvod}\\label{uvod}\n\\addcontentsline{toc}{chapter}{Úvod}/g' "${FILE%.md}.tex"

  sed -ie 's/\\chapter{Závěr}\\label{zuxe1vux11br}/'\
'\\chapter\*{Závěr}\\label{zaver}\n\\addcontentsline{toc}{chapter}{Závěr}/g' "${FILE%.md}.tex"


  rm "${FILE%.md}.texe"
  rename 's/^markdown(.*)/tex$1/' "${FILE%.md}.tex"
done

echo -e "\n\n### Commiting to git ###\n\n"

git add *
git commit -m 'Change'

echo -e "\n\n### Pushing to GitHub ###\n\n"

bkp





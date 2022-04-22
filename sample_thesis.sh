rm *.log
rm *.aux
rm *.toc
rm *.bbl
rm *.out
rm *.blg
rm *.listing
rm *.synctex.gz
xelatex -file-line-error -shell-escape sample_thesis
bibtex sample_thesis
xelatex -file-line-error -shell-escape sample_thesis
xelatex -file-line-error -shell-escape sample_thesis
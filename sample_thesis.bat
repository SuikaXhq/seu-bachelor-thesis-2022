del *.log
del *.aux
del *.toc
del *.bbl
del *.out
del *.blg
del *.listing
del *.synctex.gz
xelatex -file-line-error -shell-escape sample_thesis
bibtex sample_thesis
xelatex -file-line-error -shell-escape sample_thesis
xelatex -file-line-error -shell-escape sample_thesis
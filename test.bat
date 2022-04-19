del seuthesis-2019.cls
del seuthesis-2019.cfg
del seuthesisdoc.sty
del *.log
del *.aux
del *.toc
del *.bbl
del *.out
del *.blg
del *.listing
del *.synctex.gz
xelatex seuthesis-2019.ins
xelatex -interaction=nonstopmode -file-line-error -shell-escape test
xelatex -interaction=nonstopmode -file-line-error -shell-escape test
del seuthesis-2022.cls
del seuthesis-2022.cfg
del seuthesisdoc.sty
del seuthesis-2022.aux
del seuthesis-2022.glo
del seuthesis-2022.gls
del seuthesis-2022.idx
del seuthesis-2022.ind
del seuthesis-2022.ilg
del seuthesis-2022.log
del seuthesis-2022.out
del seuthesis-2022.toc
xelatex seuthesis-2022.ins
xelatex seuthesis-2022.dtx
makeindex -s gind.ist -o seuthesis-2022.ind seuthesis-2022.idx
makeindex -s gglo.ist -o seuthesis-2022.gls seuthesis-2022.glo
xelatex seuthesis-2022.dtx
xelatex seuthesis-2022.dtx
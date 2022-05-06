xelatex seuthesis-2022.ins
xelatex seuthesis-2022.dtx
makeindex -s gind.ist -o seuthesis-2022.ind seuthesis-2022.idx
makeindex -s gglo.ist -o seuthesis-2022.gls seuthesis-2022.glo
xelatex seuthesis-2022.dtx
xelatex seuthesis-2022.dtx
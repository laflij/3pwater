# Gnuplot script to plot the radial distribution function between 2 LJ 
# particles

set terminal cairolatex pdf size 6,3
set style fill transparent solid 0.05 noborder
set output "~/Dropbox/MolecularSimulations/figures/rdf_spc_water.tex" 
#set output "rdf.tex"

# Line styles
set border linewidth 1
set style line 1 lt 1 lc rgb "red" 	lw 3
set style line 2 lt 1 lc rgb "orange" 	lw 3
set style line 3 lt 1 lc rgb "yellow" 	lw 3 
set style line 4 lt 1 lc rgb "green" 	lw 3 
set style line 5 lt 1 lc rgb "blue" 	lw 3 
set style line 6 lt 1 lc rgb "violet" 	lw 3 
set style line 7 lt 1 lc rgb "cyan" 	lw 3 
set style line 8 lt 1 lc rgb "black" 	lw 3 

# Set Title
set notitle

# Set Key
#unset key
#set key samplen 0.5
set key spacing 2
#set key outside top right
# set key reverse 
# set key at 10**(-16.5),10**(-7)
#set key height .5
# set key width 1.5

# Set axis labels, and scaling
set xlabel "radius $\\left(\\AA\\right)$" offset 0, -2
set ylabel "$g(r)$" offset -2, 0
# unset ylabel
# unset xlabel
# Set axis scaling
set xr [0:10]
#set yr [-2:1.5]
set xtic 0.5                         # set xtics automatically
set ytic auto                        # set ytics automatically

# Set Grid
set grid ytics lc rgb "#bbbbbb" lw 5 lt 0
set grid xtics lc rgb "#bbbbbb" lw 5 lt 0

plot "rdf.xvg" using 2:3 title "OO" with lines ls 5, \
     "rdf.xvg" using 2:5 title "OH" with lines ls 4, \
     "rdf.xvg" using 2:7 title "HH" with lines ls 1

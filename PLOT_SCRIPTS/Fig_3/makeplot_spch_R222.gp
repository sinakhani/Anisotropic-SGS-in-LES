#gnuplot script for plotting an energy spectrum

set style data line # use solid lines

# save file as eps file - this command would be different for pdf

set terminal epslatex size 4,2.82 standalone color colortext 9
set output 'fig3_c.tex' # filename for output


set key top right  # where to put key
set logscale xy # use logscale for x and y

set xlabel '$k_h$'   # label for x axis
set ylabel '$\langle E(k_h) \rangle$'  # label for y axis

!set title  'Total energy vs time ' # title


set arrow 5 from 2,2e-4 to 8,1.9842e-5   nohead lt 1 lc 7 lw 2
!set label 5 "$-5/3$" at 4,3.14e-6

set arrow 6 from 2,2e-4 to 8,3.1250e-6    nohead lt 1 lc 7 lw 2
!set label 6 "$-3$" at  4,1.25e-6



!set label 1 "$k_b$" at 16,2.5e-3


set format y "$10^{%T}$"
set xrange [1:350] # range for x axis
!set xtics 20
set ytics 100
set yrange [5e-7:0.1] # range for y axis

set label '(c)' at 1.25,9e-7  # write text '(c)'

plot  '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/DNS/R222N4.2/Cont_to_15/spchavg.dat'                    using 1:2     title 'D22N4'             lt 1 lc 9 lw 5,\
      '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/LES/R222N4.2/Cont_to_10/spchavg.dat'                    using 1:2     title 'LA22N4a'             lt 2 lc 3 lw 5,\
      '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/LES/R222N4.2_b/Cont_to_10/spchavg.dat'                  using 1:2     title 'LA22N4b'             lt 5 lc 4 lw 5,\
      '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/LES_CLSSC/R222N4.2_mv/Cont_to_15/spchavg.dat'           using 1:2     title 'LC22N4a'              lt 2 lc 5 lw 5







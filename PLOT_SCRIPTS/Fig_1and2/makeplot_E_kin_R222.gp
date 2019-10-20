#gnuplot script for plotting an energy spectrum

set style data lines  # use solid lines

# save file as eps file - this command would be different for pdf
# here 12 is font size
!set terminal postscript enhanced eps 13 color
!set terminal latex 

set terminal epslatex size 4,2.82 standalone color colortext 9

set output 'fig1_h.tex' # filename for output

set key top right # where to put key
!set logscale xy # use logscale for x and y

!set  arrow 1  from  150,2.5e-2 to 300,2.5e-2
!set  arrow 2  from  150,2.5e-2 to 0,2.5e-2
!set label 1 "Initial hyperviscosity runs" at 2,2.93e-2


!set logscale y 
set xlabel 't'    # label for x axis
set ylabel '$E_p(t)$, $E(t)$'    # label for y axis
!set title  '$Re_b \gtrsim 1$ ' # title

!set format y "$10^{%T}$"
set xrange [0:15] # range for x axis
set xtics 5
set yrange [0:0.14] # range for y axis

set label '(d)' at 1,0.13  # write text '(d)'

plot  '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/DNS/R222N4.2/eng.dat'                             using 1:2     notitle             lt 1 lc 9 lw 5,\
      '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/DNS/R222N4.2/Cont_to_10/eng.dat'                  using 1:2     notitle             lt 1 lc 9 lw 5,\
      '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/DNS/R222N4.2/Cont_to_15/eng.dat'                  using 1:2     notitle             lt 1 lc 9 lw 5,\
      '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/DNS/R222N4.2/eng.dat'                             using 1:3     notitle             lt 1 lc 9 lw 5,\
      '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/DNS/R222N4.2/Cont_to_10/eng.dat'                  using 1:3     notitle             lt 1 lc 9 lw 5,\
      '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/DNS/R222N4.2/Cont_to_15/eng.dat'                  using 1:3     title 'D22N4'	  lt 1 lc 9 lw 5,\
      '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/LES/R222N4.2/eng.dat'                             using 1:2     notitle             lt 2 lc 3 lw 5,\
      '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/LES/R222N4.2/Cont_to_10/eng.dat'                  using 1:2     notitle             lt 2 lc 3 lw 5,\
      '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/LES/R222N4.2/Cont_to_15/eng.dat'                  using 1:2     notitle      	  lt 2 lc 3 lw 5,\
      '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/LES/R222N4.2/eng.dat'                             using 1:3     notitle             lt 2 lc 3 lw 5,\
      '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/LES/R222N4.2/Cont_to_10/eng.dat'                  using 1:3     notitle             lt 2 lc 3 lw 5,\
      '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/LES/R222N4.2/Cont_to_15/eng.dat'                  using 1:3     title 'LA22N4a'     lt 2 lc 3 lw 5,\
      '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/LES/R222N4.2_b/eng.dat'                             using 1:2     notitle             lt 5 lc 4 lw 5,\
      '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/LES/R222N4.2_b/Cont_to_10/eng.dat'                  using 1:2     notitle             lt 5 lc 4 lw 5,\
      '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/LES/R222N4.2_b/Cont_to_15/eng.dat'                  using 1:2     notitle      lt 5 lc 4 lw 5,\
      '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/LES/R222N4.2_b/eng.dat'                             using 1:3     notitle             lt 5 lc 4 lw 5,\
      '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/LES/R222N4.2_b/Cont_to_10/eng.dat'                  using 1:3     notitle             lt 5 lc 4 lw 5,\
      '/scratch/m/mwaite/sinakh/LES_Hor_DNS_Ver/LES/R222N4.2_b/Cont_to_15/eng.dat'                  using 1:3     title 'LA22N4b'     lt 5 lc 4 lw 5





 

      




set term png
set out 'lab3m.png' 
set key top left 
set xlabel "Packet size [bytes]"
set ylabel "Throughput [Mbps]"
Throughput_11b(x) = x*8 /(764 + (70 + x)*8/MCS)
plot MCS=1 Throughput_11b(x) lw 2 t 'Theory 1M', \
     MCS=2 Throughput_11b(x) lw 2 t 'Theory 2M', \
     MCS=5.5 Throughput_11b(x) lw 2 t 'Theory 5.5M', \
     MCS=11 Throughput_11b(x) lw 2 t 'Theory 11M',\
     'lab3m.out' using 1:2 w p t 'ns3 1M', \
     'lab3m.out' using 1:3 w p t 'ns3 2M', \
     'lab3m.out' using 1:4 w p t 'ns3 5.5M', \
     'lab3m.out' using 1:5 w p t 'ns3 11M'
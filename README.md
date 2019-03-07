# Laborator03

* verificare lab3 - formula teoretică
* se instalează ns-allinone-3.29
   ```
   #cd ns-3.29
   # ./waf configure --enable-examples
   # ./waf
   ```
* se adaugă lab3.cc, lab3m.plot, lab3m.sh  în ns3.29/scratch
* rulare pentru 802.11b, vezi lab3m.sh
   ```#  bash scratch/run.sh | tee ./scratch/lab3m.out    ```
* plotare
   ```# gnuplot ./lab3m.plot```
* rezultă lab3m.png


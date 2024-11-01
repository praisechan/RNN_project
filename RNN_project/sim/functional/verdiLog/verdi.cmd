simSetSimulator "-vcssv" -exec "./simv" -args "-reportstats"
debImport "-dbdir" "./simv.daidir"
debLoadSimResult \
           /home/juchan.lee/RNN/RNN_project/sim/functional/reports/tb_TOP.fsdb
wvCreateWindow

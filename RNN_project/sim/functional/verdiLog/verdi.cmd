simSetSimulator "-vcssv" -exec "./simv" -args "-reportstats"
debImport "-dbdir" "./simv.daidir"
debLoadSimResult /home/juchan.lee/RNN_project/sim/functional/reports/tb_TOP.fsdb
wvCreateWindow
wvSetCursor -win $_nWave2 445076.949007
wvRestoreSignal -win $_nWave2 \
           "/home/juchan.lee/RNN_project/sim/functional/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvSetCursor -win $_nWave2 1498861.083505 -snap {("N0" 29)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2

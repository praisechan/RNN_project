simSetSimulator "-vcssv" -exec "./simv" -args "-reportstats"
debImport "-dbdir" "./simv.daidir"
debLoadSimResult \
           /home/juchan.lee/RNN/RNN_project/sim/functional/reports/tb_TOP.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 \
           "/home/juchan.lee/RNN/RNN_project/sim/functional/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvUnknownSaveResult -win $_nWave2 -clear
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 0.000000 381154.700637
wvSetCursor -win $_nWave2 126970.642314 -snap {("N0" 2)}
wvSetCursor -win $_nWave2 145906.990499 -snap {("N0" 2)}
wvSetCursor -win $_nWave2 155860.711980 -snap {("N0" 16)}
wvSelectSignal -win $_nWave2 {( "N0" 25 )} 
wvSetCursor -win $_nWave2 113860.862802 -snap {("N0" 25)}
wvScrollDown -win $_nWave2 4
wvScrollUp -win $_nWave2 4
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 117259.694527 -snap {("N0" 22)}
wvSelectSignal -win $_nWave2 {( "N0" 14 )} 
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb_TOP/u_RNN/N0"
wvSetPosition -win $_nWave2 {("N0" 18)}
wvSetPosition -win $_nWave2 {("N0" 21)}
wvSetPosition -win $_nWave2 {("N0" 24)}
wvSetPosition -win $_nWave2 {("N0" 25)}
wvAddSignal -win $_nWave2 "/tb_TOP/u_RNN/N0/sum\[10:0\]"
wvSetPosition -win $_nWave2 {("N0" 25)}
wvSetPosition -win $_nWave2 {("N0" 26)}
wvSetPosition -win $_nWave2 {("N0" 26)}
wvSetPosition -win $_nWave2 {("N0" 26)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"N0" \
{/tb_TOP/u_RNN/N0/CLK} \
{/tb_TOP/u_RNN/N0/state\[31:0\]} \
{/tb_TOP/u_RNN/N0/IN0_REQ} \
{/tb_TOP/u_RNN/N0/IN1_REQ} \
{/tb_TOP/u_RNN/N0/IN2_REQ} \
{/tb_TOP/u_RNN/N0/IN3_REQ} \
{/tb_TOP/u_RNN/N0/IN0_ACK} \
{/tb_TOP/u_RNN/N0/IN1_ACK} \
{/tb_TOP/u_RNN/N0/IN2_ACK} \
{/tb_TOP/u_RNN/N0/IN3_ACK} \
{/tb_TOP/u_RNN/N0/IN0_DATA} \
{/tb_TOP/u_RNN/N0/IN1_DATA} \
{/tb_TOP/u_RNN/N0/IN2_DATA} \
{/tb_TOP/u_RNN/N0/IN3_DATA} \
{/tb_TOP/u_RNN/N0/OUT_REQ} \
{/tb_TOP/u_RNN/N0/OUT_ACK} \
{/tb_TOP/u_RNN/N0/OUT_DATA} \
{/tb_TOP/u_RNN/N0/RSTB} \
{/tb_TOP/u_RNN/N0/recv_flag\[3:0\]} \
{/tb_TOP/u_RNN/N0/data\[3:0\]} \
{/tb_TOP/u_RNN/N0/data\[3\]\[7:0\]} \
{/tb_TOP/u_RNN/N0/data\[2\]\[7:0\]} \
{/tb_TOP/u_RNN/N0/data\[1\]\[7:0\]} \
{/tb_TOP/u_RNN/N0/data\[0\]\[7:0\]} \
{/tb_TOP/u_RNN/N0/output_data\[7:0\]} \
{/tb_TOP/u_RNN/N0/sum\[10:0\]} \
{/tb_TOP/u_RNN/N0/recv_bit_counter\[3:0\]} \
{/tb_TOP/u_RNN/N0/scaled_data\[3:0\]} \
{/tb_TOP/u_RNN/N0/send_bit_counter\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"N4" \
{/tb_TOP/u_RNN/N4/CLK} \
{/tb_TOP/u_RNN/N4/state\[31:0\]} \
{/tb_TOP/u_RNN/N4/IN0_REQ} \
{/tb_TOP/u_RNN/N4/IN1_REQ} \
{/tb_TOP/u_RNN/N4/IN2_REQ} \
{/tb_TOP/u_RNN/N4/IN3_REQ} \
{/tb_TOP/u_RNN/N4/IN0_ACK} \
{/tb_TOP/u_RNN/N4/IN1_ACK} \
{/tb_TOP/u_RNN/N4/IN2_ACK} \
{/tb_TOP/u_RNN/N4/IN3_ACK} \
{/tb_TOP/u_RNN/N4/IN0_DATA} \
{/tb_TOP/u_RNN/N4/IN1_DATA} \
{/tb_TOP/u_RNN/N4/IN2_DATA} \
{/tb_TOP/u_RNN/N4/IN3_DATA} \
{/tb_TOP/u_RNN/N4/OUT_ACK} \
{/tb_TOP/u_RNN/N4/OUT_DATA} \
{/tb_TOP/u_RNN/N4/OUT_REQ} \
{/tb_TOP/u_RNN/N4/RSTB} \
{/tb_TOP/u_RNN/N4/recv_flag\[3:0\]} \
{/tb_TOP/u_RNN/N4/data\[3:0\]} \
{/tb_TOP/u_RNN/N4/data\[3\]\[7:0\]} \
{/tb_TOP/u_RNN/N4/data\[2\]\[7:0\]} \
{/tb_TOP/u_RNN/N4/data\[1\]\[7:0\]} \
{/tb_TOP/u_RNN/N4/data\[0\]\[7:0\]} \
{/tb_TOP/u_RNN/N4/output_data\[7:0\]} \
{/tb_TOP/u_RNN/N4/recv_bit_counter\[3:0\]} \
{/tb_TOP/u_RNN/N4/scaled_data\[3:0\]} \
{/tb_TOP/u_RNN/N4/send_bit_counter\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb_TOP/output_ack} \
{/tb_TOP/i\[31:0\]} \
{/tb_TOP/eval_val\[7:0\]} \
{/tb_TOP/OUT_DATA} \
{/tb_TOP/random_data\[63:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSetPosition -win $_nWave2 {("N0" 26)}
wvSetPosition -win $_nWave2 {("N0" 26)}
wvSetPosition -win $_nWave2 {("N0" 26)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"N0" \
{/tb_TOP/u_RNN/N0/CLK} \
{/tb_TOP/u_RNN/N0/state\[31:0\]} \
{/tb_TOP/u_RNN/N0/IN0_REQ} \
{/tb_TOP/u_RNN/N0/IN1_REQ} \
{/tb_TOP/u_RNN/N0/IN2_REQ} \
{/tb_TOP/u_RNN/N0/IN3_REQ} \
{/tb_TOP/u_RNN/N0/IN0_ACK} \
{/tb_TOP/u_RNN/N0/IN1_ACK} \
{/tb_TOP/u_RNN/N0/IN2_ACK} \
{/tb_TOP/u_RNN/N0/IN3_ACK} \
{/tb_TOP/u_RNN/N0/IN0_DATA} \
{/tb_TOP/u_RNN/N0/IN1_DATA} \
{/tb_TOP/u_RNN/N0/IN2_DATA} \
{/tb_TOP/u_RNN/N0/IN3_DATA} \
{/tb_TOP/u_RNN/N0/OUT_REQ} \
{/tb_TOP/u_RNN/N0/OUT_ACK} \
{/tb_TOP/u_RNN/N0/OUT_DATA} \
{/tb_TOP/u_RNN/N0/RSTB} \
{/tb_TOP/u_RNN/N0/recv_flag\[3:0\]} \
{/tb_TOP/u_RNN/N0/data\[3:0\]} \
{/tb_TOP/u_RNN/N0/data\[3\]\[7:0\]} \
{/tb_TOP/u_RNN/N0/data\[2\]\[7:0\]} \
{/tb_TOP/u_RNN/N0/data\[1\]\[7:0\]} \
{/tb_TOP/u_RNN/N0/data\[0\]\[7:0\]} \
{/tb_TOP/u_RNN/N0/output_data\[7:0\]} \
{/tb_TOP/u_RNN/N0/sum\[10:0\]} \
{/tb_TOP/u_RNN/N0/recv_bit_counter\[3:0\]} \
{/tb_TOP/u_RNN/N0/scaled_data\[3:0\]} \
{/tb_TOP/u_RNN/N0/send_bit_counter\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"N4" \
{/tb_TOP/u_RNN/N4/CLK} \
{/tb_TOP/u_RNN/N4/state\[31:0\]} \
{/tb_TOP/u_RNN/N4/IN0_REQ} \
{/tb_TOP/u_RNN/N4/IN1_REQ} \
{/tb_TOP/u_RNN/N4/IN2_REQ} \
{/tb_TOP/u_RNN/N4/IN3_REQ} \
{/tb_TOP/u_RNN/N4/IN0_ACK} \
{/tb_TOP/u_RNN/N4/IN1_ACK} \
{/tb_TOP/u_RNN/N4/IN2_ACK} \
{/tb_TOP/u_RNN/N4/IN3_ACK} \
{/tb_TOP/u_RNN/N4/IN0_DATA} \
{/tb_TOP/u_RNN/N4/IN1_DATA} \
{/tb_TOP/u_RNN/N4/IN2_DATA} \
{/tb_TOP/u_RNN/N4/IN3_DATA} \
{/tb_TOP/u_RNN/N4/OUT_ACK} \
{/tb_TOP/u_RNN/N4/OUT_DATA} \
{/tb_TOP/u_RNN/N4/OUT_REQ} \
{/tb_TOP/u_RNN/N4/RSTB} \
{/tb_TOP/u_RNN/N4/recv_flag\[3:0\]} \
{/tb_TOP/u_RNN/N4/data\[3:0\]} \
{/tb_TOP/u_RNN/N4/data\[3\]\[7:0\]} \
{/tb_TOP/u_RNN/N4/data\[2\]\[7:0\]} \
{/tb_TOP/u_RNN/N4/data\[1\]\[7:0\]} \
{/tb_TOP/u_RNN/N4/data\[0\]\[7:0\]} \
{/tb_TOP/u_RNN/N4/output_data\[7:0\]} \
{/tb_TOP/u_RNN/N4/recv_bit_counter\[3:0\]} \
{/tb_TOP/u_RNN/N4/scaled_data\[3:0\]} \
{/tb_TOP/u_RNN/N4/send_bit_counter\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/tb_TOP/output_ack} \
{/tb_TOP/i\[31:0\]} \
{/tb_TOP/eval_val\[7:0\]} \
{/tb_TOP/OUT_DATA} \
{/tb_TOP/random_data\[63:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSetPosition -win $_nWave2 {("N0" 26)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "N0" 26 )} 
wvSelectSignal -win $_nWave2 {( "N0" 26 )} 
wvSetRadix -win $_nWave2 -format Bin
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.000000 132554.437292
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "N0" 26 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetPosition -win $_nWave2 {("N0" 25)}
wvSetPosition -win $_nWave2 {("N0" 24)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("N0" 24)}
wvSetPosition -win $_nWave2 {("N0" 25)}
wvSelectSignal -win $_nWave2 {( "N0" 28 )} 
wvSetPosition -win $_nWave2 {("N0" 28)}
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "N0" 21 )} 
wvSelectSignal -win $_nWave2 {( "N0" 20 )} 
wvSetRadix -win $_nWave2 -2Com
wvSetCursor -win $_nWave2 119214.563985 -snap {("N0" 22)}
wvSelectSignal -win $_nWave2 {( "N0" 25 )} 
wvSetRadix -win $_nWave2 -2Com
wvSetCursor -win $_nWave2 144205.719041 -snap {("N0" 17)}
wvSetCursor -win $_nWave2 144712.296508 -snap {("N0" 16)}
wvSetCursor -win $_nWave2 152986.395142 -snap {("N0" 16)}
wvSetCursor -win $_nWave2 146400.888066 -snap {("N0" 16)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 154674.986699 -snap {("N0" 16)}
wvSetCursor -win $_nWave2 145725.451443 -snap {("N0" 2)}
wvSetCursor -win $_nWave2 125124.634437 -snap {("N0" 2)}
wvSetCursor -win $_nWave2 116006.240025 -snap {("N0" 22)}
wvSetCursor -win $_nWave2 124280.338658 -snap {("N0" 2)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 678813.806257 857129.074767
wvSetCursor -win $_nWave2 794775.519091 -snap {("N0" 25)}
wvSelectSignal -win $_nWave2 {( "N0" 26 )} 
wvSetCursor -win $_nWave2 824986.895793 -snap {("N0" 2)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 1199931.464968 -snap {("N0" 25)}
wvSetCursor -win $_nWave2 945828.331210 -snap {("N0" 25)}
wvSetCursor -win $_nWave2 1379921.184713 -snap {("N0" 25)}
wvSetCursor -win $_nWave2 1492855.910828 -snap {("N0" 25)}
wvSetCursor -win $_nWave2 2858660.254777 -snap {("N0" 25)}
wvZoom -win $_nWave2 2325749.515924 3250402.585987
wvSetCursor -win $_nWave2 2895854.083962 -snap {("N0" 25)}
wvSelectSignal -win $_nWave2 {( "N0" 25 )} 
wvSetCursor -win $_nWave2 2937080.653965 -snap {("N0" 26)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "N4" 20 )} 
wvSetCursor -win $_nWave2 864656.496815 -snap {("N4" 8)}
wvSetCursor -win $_nWave2 829364.394904 -snap {("N4" 8)}
wvSetCursor -win $_nWave2 843481.235669 -snap {("N4" 8)}
wvSetCursor -win $_nWave2 1316395.401274 -snap {("N4" 25)}
wvZoom -win $_nWave2 405859.171975 2092821.643312
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0

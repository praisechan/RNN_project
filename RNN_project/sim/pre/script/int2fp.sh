make compile FILE=./files/int2fp.f MACRO=+PE_ROW=32+PE_COL=32+EXTRA_WIDTH=0
make sim
make compile FILE=./files/int2fp.f MACRO=+PE_ROW=32+PE_COL=32+EXTRA_WIDTH=1
make sim
make compile FILE=./files/int2fp.f MACRO=+PE_ROW=32+PE_COL=32+EXTRA_WIDTH=2
make sim
make compile FILE=./files/int2fp.f MACRO=+PE_ROW=32+PE_COL=32+EXTRA_WIDTH=3
make sim
make compile FILE=./files/int2fp.f MACRO=+PE_ROW=32+PE_COL=32+EXTRA_WIDTH=4
make sim

make compile FILE=./files/int2fp.f MACRO=+PE_ROW=64+PE_COL=64+EXTRA_WIDTH=0
make sim
make compile FILE=./files/int2fp.f MACRO=+PE_ROW=64+PE_COL=64+EXTRA_WIDTH=1
make sim
make compile FILE=./files/int2fp.f MACRO=+PE_ROW=64+PE_COL=64+EXTRA_WIDTH=2
make sim
make compile FILE=./files/int2fp.f MACRO=+PE_ROW=64+PE_COL=64+EXTRA_WIDTH=3
make sim
make compile FILE=./files/int2fp.f MACRO=+PE_ROW=64+PE_COL=64+EXTRA_WIDTH=4
make sim
#!/bin/csh -f

cd /home/juchan.lee/softmax_v5/sim/pre

#This ENV is used to avoid overriding current script in next vcselab run 
setenv SNPS_VCSELAB_SCRIPT_NO_OVERRIDE  1

/tool/Program/synopsys/vcs_vR-2020.12-SP1/linux64/bin/vcselab $* \
    -o \
    simv \
    -nobanner \

cd -


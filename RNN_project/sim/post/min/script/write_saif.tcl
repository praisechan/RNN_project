set topModule $::env(TOP)
dumpsaif -output $topModule.saif -scope "u_$topModule" -overwrite -verbose
run
dumpsaif -end
do setenv.do
do compile.do

vsim -t 1ns -L altera_mf_ver -lib my_work TOP

do wave.do

run -all

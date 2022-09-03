vlog -sv -work my_work +define+DISABLE_DEFAULT_NET $rtl/*.*v
vlog -sv -work my_work +define+DISABLE_DEFAULT_NET $tb/*.*v

vopt +acc $top -o TOP

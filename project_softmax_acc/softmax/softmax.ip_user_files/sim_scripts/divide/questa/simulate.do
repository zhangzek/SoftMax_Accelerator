onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib divide_opt

do {wave.do}

view wave
view structure
view signals

do {divide.udo}

run -all

quit -force

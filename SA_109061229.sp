*
.protect
.lib 'cic018.l' TT
.temp 25
.unprotect
.option post
.inc 'sa.spi'
VDD VDD GND 1.8

VINP INP GND 1.8
VINN INN GND 0
VEN EN GND Pulse 0 1.8 1n 0.1n 0.1n 0.9n 2n

X1 EN GND INN INP SO SON VDD / SA

.tran 0.01p 10n
.meas tran tp Trig V(EN) val=0.9 rise=2 targ V(SON) val=0.9 fall = 2
.meas tran power avg p(VDD) from 3n to 5n
.end

$regfile = "m16def.dat"

config lcdpin = pin , port = PORTc , rs = portd.0 , e = portd.1
config ADC = single , Prescaler = Auto , Reference = Avcc

config LCD = 16 * 2
start ADC

dim temprature as integer
dim tmp as integer
dim Out_put as single

Cursor Off

temprature = GETADC(0)
tmp = temprature * 5
Out_put = tmp / 10
LCD Fusing(Out_put , "#.#") ; "C"

End
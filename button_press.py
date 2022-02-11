from signal import pause
from gpiozero import LED, Button

button = Button(21)
led = LED(26)

try:
    led.source = button.values

    pause()
finally:
    pass
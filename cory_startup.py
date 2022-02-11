# Making my own Startup Script for Rpi
# cory_startup.py
from gpiozero import Button
from subprocess import check_call
from signal import pause

# Define GPIO number
gpio_number = 22

# Define number of seconds to hold the button for
hold_time = 6


def buttonHeld():
  print("Button pressed for "+ str(hold_time) +" seconds")
  check_call(['sudo', 'poweroff'])

# Create a button object and define what function is
# run when it is held down for the hold_time
button = Button(gpio_number, pull_up = False, hold_time = hold_time)
button.when_held = buttonHeld

pause()
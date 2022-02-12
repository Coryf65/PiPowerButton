# Raspberry Pi On / Off Button

- be able to turn off and on my retropie cabinet with a button.
- learning from examples and the really good `gpiozero` Module / Library [here](https://gpiozero.readthedocs.io/en/stable/recipes.html "gpiozero Docs")

## examples

- M Heidenreich [YouTube](https://youtu.be/YICzRCAY73Y)
- QuartoKnows [here](https://www2.quartoknows.com/page/raspberry-pi-shutdown-button)
- Push buttons with Python for RPi [here](https://www.youtube.com/watch?v=YICzRCAY73Y)
- Way of the Wrench [here](https://www.youtube.com/watch?v=EWlRwWt2rNc)
- ETAPrime [here](https://www.youtube.com/watch?v=4nTuzIY0i3k)
- RPI button on/off [here](https://pythonrepo.com/repo/fire1ce-raspberry-pi-power-button-python-programming-with-hardware)

## Python

1. installing pip modules in VSCode

```ps
python -m pip install numpy
```

## Tools

- script
- wires
- button
- Rpi

## Setup

1. Download / Run the service script

3. place button and wire onto pins

    - When Raspberry Pi is powered off, shortening GPIO3 (Pin 5) to ground will wake the Raspberry Pi.

    - This script uses pin GPIO3(5), Ground(6) with momentary button.
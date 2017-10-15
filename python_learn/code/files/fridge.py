""" An example which shows context manager closing""" 
from contextlib import closing

class RefrigeratorRaider:
    def open(self):
        print("Opening fridge")
    def take(self,food):
        print("Finding {} ...".format(food))
        if food == "Pizza":
            raise RuntimeError("Health warning !!")
        print("Taking {} ...".format(food))
    def close(self):
        print("Closing fridge door")

def raid(food):
    # Close function will be called automatically by the closing from contextlib
    with closing(RefrigeratorRaider()) as r:
        r.open()
        r.take(food)

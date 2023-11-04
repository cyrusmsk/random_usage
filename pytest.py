import sys
from math import sqrt, pi, cos, sin
from random import random
import csv

def main():
    R = int(sys.argv[1])
    with open('pydata.csv', 'w') as file:
        writer = csv.writer(file)

        for i in range(1000):
            r = R * sqrt(random())
            theta = random() * 2 * pi
            x = r * cos(theta)
            y = r * sin(theta)
            writer.writerow([x,y])

if __name__ == "__main__":
    main()

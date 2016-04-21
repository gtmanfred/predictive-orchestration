#!/usr/bin/python2
from multiprocessing import Pool
import time
import sys

if len(sys.argv) > 1:
    wait_time = int(sys.argv[1])
else:
    wait_time = 120

def f(x):
    date = time.time()
    while date + wait_time > time.time():
        a = x*x
    return

if __name__ == '__main__':
    p = Pool(10)
    p.map(f, [1, 2, 3, 4, 5])

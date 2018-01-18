#!/usr/bin/env python3
import pandas as pd
import numpy as np

if __name__ == '__main__':
    df = pd.read_csv('HIV_INDICATOR.csv')
    print(df.head())
    print(df.info())
    print(df.describe())

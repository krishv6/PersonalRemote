#!/usr/bin/env python3
from sklearn import datasets
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

if __name__ == '__main__':
    iris = datasets.load_iris()
    # Shape(150,4). Each row is data point, each column is a feture. x is numpy array
    x=iris.data
    # Shape(150,). Single row. Each element is target for each row of iris.data. y is numpy array
    y=iris.target
    # df is pandas dataframe. df.values would return the numpy array
    df = pd.DataFrame(x,columns=iris.feature_names)
    # pd.scatter_matrix(df,c=y,figsize=[8,8],s=150,marker='D')

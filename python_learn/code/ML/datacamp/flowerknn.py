#!/usr/bin/env python3
from sklearn import datasets
from sklearn.neighbors import KNeighborsClassifier
import argparse
import numpy as np
if __name__ == '__main__':
    parser=argparse.ArgumentParser()
    parser.add_argument('-n','--neighbors',type=int,help='Number of nearest neighbors to determine class',required=True)
    args=parser.parse_args()
    iris = datasets.load_iris()
    knn = KNeighborsClassifier(n_neighbors=args.neighbors)
    # Dataset should continuos like price of house instead of classifer like 'Male/Female'
    # Dataset should not have missing data
    # knn classifier is now modified to fit the data
    knn.fit(iris['data'],iris['target'])
    X_new=np.array([[6.,3.,5.,2.],[5.,3.,1.,0.5],[4.,2.,1.,0.5]])
    flowersPredicted = [ iris.target_names[x] for x in knn.predict(X_new) ]
    print(flowersPredicted)


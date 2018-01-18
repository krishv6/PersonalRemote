#!/usr/bin/env python3
from sklearn import datasets
from sklearn.neighbors import KNeighborsClassifier
from sklearn.model_selection import train_test_split
import argparse
if __name__ == '__main__':
    parser=argparse.ArgumentParser()
    parser.add_argument('-n','--neighbors',type=int,help='Number of nearest neighbors for algorithm',required=True)
    parser.add_argument('-ts','--testsize',type=float,help='Size of test data compared to train data',required=True)
    parser.add_argument('-r','--random',type=int,help='Random state for train test split',required=True)
    args=parser.parse_args()
    digits=datasets.load_digits()
    x=digits.data
    y=digits.target
    x_train,x_test,y_train,y_test=train_test_split(x,y,test_size=args.testsize,random_state=args.random,stratify=y)
    knn=KNeighborsClassifier(n_neighbors=args.neighbors)
    knn.fit(x_train,y_train)
    print(knn.score(x_test,y_test))

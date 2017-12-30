#!/usr/bin/env python3.4
import numpy as np
a=np.array([1,2,4,2])
print(a)
print(type(a))
print(a.shape)
print(a[0])
print(type(a[0]))
a[0]=12
print(a)
b=np.array([[1,2,4],[12,23,12]])
print(b.shape)
print(b[0, 0], b[0, 1], b[1, 0])
c=np.array([[1],[2],[4],[2]])
print(c)
print(c.shape)
d=np.random.random((3,4))
print(d)
e=np.array([[1,2,3],[4,5,6],[7,8,9]])
f=e[:2,1:3]
print(e[0][1])
f[0][0] = 9
print(e[0][1])
g=e[1,:]
h=e[:,1:2]
i=e[:,1]
j=e[1:2,:]
print(g)
print(h)
print(i)
print(j)
k = np.array([[1,2], [3, 4], [5, 6]])
print(k[[0, 1, 2], [0, 1, 0]])
print(np.array([k[0,0],k[1,1],k[2,0]]))
bool_idx=e > 3
print(e[bool_idx])

#!/usr/bin/env python3
import tensorflow as tf
import argparse

if __name__=='__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("-i", "--iterTrain", type=int, help="Number of iterations required for training", required=True)
    args = parser.parse_args()

    x=tf.placeholder(tf.float32)
    a=tf.Variable([.3],dtype=tf.float32)
    b=tf.Variable([-.3],dtype=tf.float32)
    lm=a*x+b
    y=tf.placeholder(tf.float32)
    err=tf.reduce_sum(tf.square(y-lm))
    optimizer=tf.train.GradientDescentOptimizer(0.01)
    train = optimizer.minimize(err)

    x_train=[1,2,3,4]
    y_train=[12,22,32,42]

    init= tf.global_variables_initializer()
    sess = tf.Session()
    sess.run(init)
    
    for i in range(args.iterTrain):
        sess.run(train,{x:x_train,y:y_train})

    curr_a,curr_b,curr_err = sess.run([a,b,err],{x:x_train,y:y_train})
    output_str = 'curr_a : {0}, curr_b : {1}, curr_err : {2}'.format(curr_a,curr_b,curr_err)
    print(output_str)

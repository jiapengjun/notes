#!/usr/bin/python
#coding:utf-8

import codecs

text = '中华人民共和国'
with codecs.open("out1.txt", "w") as o1,  \
     codecs.open("out2.txt", "w", encoding="gb2312") as o2:
    o1.write(text)
    o2.write(text)

with codecs.open("out1.txt") as o1,  \
     codecs.open("out2.txt", encoding="gb2312") as o2:
    t1 = o1.read()
    t2 = o2.read()
    print(str(type(t1)) + str(type(t2)))
    if t1 == t2:
        print("equal")

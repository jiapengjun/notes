#!/usr/bin/python
#coding:utf-8

""" test code for module: codecs """
import codecs

text = u'中华人民共和国'
t1 = codecs.encode(text, "utf-8")
t2 = codecs.encode(text, "gb2312")
print str(type(text)) + str(type(t1)) + str(type(t2))

with open("out1.txt", "w") as o1, open("out2.txt", "w") as o2:
    o1.write(t1)
    o2.write(t2)

with open("out1.txt") as o1, open("out2.txt") as o2:
    t1 = o1.read()
    print "orig t1: " + t1
    tn1 = codecs.decode(t1, "utf-8")
    print "orig tn1: " + tn1
    print str(type(t1)) + str(type(tn1))

    t2 = o2.read()
    print "orig t2: " + t2
    tn2 = codecs.decode(t2, "gb2312")
    print "orig tn2: " + tn2

    if tn1 == tn2:
        print "tn1 & tn2 is equal"

with codecs.open("out1.txt", encoding="utf-8") as oo1,  \
     codecs.open("out2.txt", encoding="gb2312") as oo2:
    t1 = oo1.read()
    print "t1: " + t1

    t2 = oo2.read()
    print "t2: " + t2

    print str(type(t1)) + str(type(t2))

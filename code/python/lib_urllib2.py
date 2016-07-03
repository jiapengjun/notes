#!/usr/bin/python 
#coding:utf-8

if __name__ == "__main__":
    i_url = "http://localhost:9200/twitter/message/3?pretty"
    i_msg = ''' {
        "user": "kimchy",
        "post_date": "2009-11-15T14:12:12",
        "message": "3 tweet, will it be indexed?"
    }'''

    s_url = "http://localhost:9200/twitter/message/_search?pretty=true"
    s_msg = ''' {
        "query": {
            "match_all" : {}
        }
    }'''

    import urllib2
    req = urllib2.Request(url=i_url, data=i_msg)
    f = urllib2.urlopen(req)
    print f.read()

    req = urllib2.Request(url=s_url, data=s_msg)
    f = urllib2.urlopen(req)
    print f.read()

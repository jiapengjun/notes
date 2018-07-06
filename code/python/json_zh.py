# -*- coding: utf-8 -*-
import json

d = {1:"中文", 2:u"中文"}
with open('output.txt', 'w') as f:
    data = json.dumps(d, ensure_ascii=False, encoding='utf8').encode('utf8')
    f.write(data)
    f.write('\n')

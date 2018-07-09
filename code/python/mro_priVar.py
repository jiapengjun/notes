from pprint import pprint

class MyBaseClass(object):
    def __init__(self, value):
        self.value = value

class TimesFiveCorrect(MyBaseClass):
    def __init__(self, value):
        super(TimesFiveCorrect, self).__init__(value)
        self.value *= 5

class PlusTwoCorrect(MyBaseClass):
    def __init__(self, value):
        super(PlusTwoCorrect, self).__init__(value)
        self.value += 2

class GoodWay(TimesFiveCorrect, PlusTwoCorrect):
        def __init__(self, value):
            super(GoodWay, self).__init__(value)
            self.__private_field = 10

foo = GoodWay(5)
pprint(GoodWay.mro())
print foo._GoodWay__private_field

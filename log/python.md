### Virtual Environment
    pip install virtualenv

    #mkdir -p python_virtualenvs
    #cd python_virtualenvs

    virtualenv proj01
    source ./proj01/bin/activate

### Debug
    python -m pdb test.py

### Fibonacci numbers in one line
    #from functools import reduce
    fib=lambda n:reduce(lambda x,y:(x[0]+x[1],x[0]),[(1,1)]*(n-2))[0]

### open URL in chrome
    ctrl = webbrowser.get('open -a /Applications/Google\ Chrome.app %s')
    ctrl.open('http://www.python.org')


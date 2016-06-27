### Virtual Environment
    pip install virtualenv

    #mkdir -p python_virtualenvs
    #cd python_virtualenvs

    virtualenv proj01
    source ./proj01/bin/activate

### Debug
    python -m pdb test.py

### Pylint
    pylint --const-rgx='[a-z_][a-z0-9_]{1,30}$' test.py

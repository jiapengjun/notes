### Virtual Environment
    pip install virtualenv

    #mkdir -p python_virtualenvs
    #cd python_virtualenvs

    virtualenv proj01
    source ./proj01/bin/activate

### Debug
    python -m pdb test.py

### Debug (in function)
    import pdb; pdb.set_trace()

### yapf
    yapf test.py > test_fmt.py

### Pylint
    pylint --const-rgx='[a-z_][a-z0-9_]{1,30}$' test.py

### Preamble
    #!/usr/bin/env python
    from __future__ import unicode_literals
    from textwrap import dedent as textwrap_dedent


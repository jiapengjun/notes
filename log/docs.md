MkDocs: Documentation with Markdown
===================================
    pip install mkdocs

    mkdocs new my-docs
    cd my-docs

    mkdocs serve
    mkdocs build

    change theme
        pip install mkdocs-material

        add following line to mkdocs.yml:
            theme: 'material'
        
Sphinx: Python documentation generator.
=======================================
    pip install sphinx sphinx-autobuild 

    mkdir my-docs
    cd my-docs
    sphinx-quickstart

    sphinx-autobuild . _build/html
    make html

    change theme
        add following line in conf.py:
            html_theme = "agogo"


    introduced Markdown to Sphinx project
        pip install recommonmark

        update the conf.py:
            from recommonmark.parser import CommonMarkParser

            source_parsers = {
                '.md': CommonMarkParser,
            }

            source_suffix = ['.rst', '.md']


Unicode: Script 
===================
    𝒜 ℬ 𝒞 𝒟 ℰ ℱ 𝒢 ℋ ℐ 𝒥 𝒦 ℒ ℳ 𝒩 𝒪 𝒫 𝒬 ℛ 𝒮 𝒯 𝒰 𝒱 𝒲 𝒳 𝒴 𝒵 
    𝒶 𝒷 𝒸 𝒹 ℯ 𝒻 ℊ 𝒽 𝒾 𝒿 𝓀 𝓁 𝓂 𝓃 ℴ 𝓅 𝓆 𝓇 𝓈 𝓉 𝓊 𝓋 𝓌 𝓍 𝓎 𝓏

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


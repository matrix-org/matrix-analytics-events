Generates an HTML, human-readable list of events from the schema.

Requires [Poetry](https://python-poetry.org/) and Python 3.10.

For me, the easiest way to install python 3.10 was via [pyenv](https://github.com/pyenv/pyenv), 
then poetry was happy to recognise it after running `pyenv local 3.10.0`.

```
poetry install
poetry run python matrix_analytics_docgen ../schemas output.html
```
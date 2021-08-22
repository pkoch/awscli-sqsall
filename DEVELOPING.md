Developing
==========

Coding
------

I use VS Code to code this, with manual venvs.

```bash
mkdir -p ~/.venvs/awscli-sqsall
python3 -m venv ~/.venvs/awscli-sqsall
. ~/.venvs/awscli-sqsall/bin/activate
pip install -e .
pip install -U black pylint
pre-commit install
```

Releasing
---------

Done on [.github/workflows/publish.yml](.github/workflows/publish.yml). Don't
forget to bump the version on [setup.cfg](setup.cfg).

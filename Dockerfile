FROM bitnami/odoo:17.0.20240305
RUN source /opt/bitnami/odoo/venv/bin/activate; \
    pip --disable-pip-version-check list --outdated --format=json | python -c "import json, sys; print('\n'.join([x['name'] for x in json.load(sys.stdin)]))" | xargs -n1 pip install -U; \
    python3 -m pip install pdfminer.six; \
    pip install python-jose[cryptography]; \
    pip install pycryptodome; \
    pip install pyOpenSSL --upgrade

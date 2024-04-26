FROM bitnami/odoo:17.0.20240305
RUN source /opt/bitnami/odoo/venv/bin/activate; \
    python3 -m pip install pdfminer.six; \
    pip uninstall pyopenssl -y; \
    pip uninstall cryptography -y; \
    pip install python-jose[cryptography]; \
    pip install pycryptodome; \
    pip install pyopenssl; \
    pip install cryptography

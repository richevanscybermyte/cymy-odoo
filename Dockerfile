FROM bitnami/odoo:17.0.20240805
RUN source /opt/bitnami/odoo/venv/bin/activate; \
    python3 -m pip install pdfminer.six; \
    pip uninstall pyopenssl -y; \
    pip uninstall cryptography -y; \
    pip install python-jose; \
    pip install pycryptodome; \
    pip install pyopenssl==21.0.0; \
    pip install cryptography==3.4.8

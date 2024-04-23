FROM bitnami/odoo:17.0.20240305
RUN python3 -m pip install pdfminer.six && pip install python-jose[cryptography]

FROM bitnami/odoo:17.0.20240305
RUN source /opt/bitnami/odoo/venv/bin/activate && pip install python-jose && deactivate
#RUN python3 -m pip install pdfminer.six #Placeholder

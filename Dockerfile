FROM bitnami/odoo:17.0.20240305
COPY requirements.txt /requirements.txt
RUN pip install -r requirements.txt

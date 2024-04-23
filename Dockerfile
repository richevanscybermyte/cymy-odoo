FROM bitnami/odoo:17.0.20240305-debian-12-r0
COPY requirements.txt /requirements.txt
RUN pip install -r requirements.txt

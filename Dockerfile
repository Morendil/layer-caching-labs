# Base image
FROM python:3.12.6-alpine3.20 AS app-image
RUN python -m pip install --upgrade pip setuptools

WORKDIR /app

# A lengthy install step that we would like cached
RUN sleep 20 && echo "Configured !" > /opt/configuration.txt

# App-like things
CMD ["python", "src/app.py"]
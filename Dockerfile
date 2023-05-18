FROM python:3.9-slim

RUN apt-get update && apt-get install -y \
    --no-install-recommends gcc \
    python3.9-dev \
    libpq-dev

WORKDIR /opt/app
COPY . .

RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "manage.py"]

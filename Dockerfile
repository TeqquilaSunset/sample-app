FROM python:3.9-slim

RUN apt-get update && apt-get install -y \
    --no-install-recommends gcc \
    python3.9-dev \
    libpq-dev

#RUN pip install poetry

WORKDIR /opt/app
COPY . .

#RUN poetry install
# RUN python manage.py migrate
# RUN manage.py collectstatic
# RUN python manage.py test

RUN pip install -r requirements.txt

EXPOSE 8000

RUN chmod +x entrypoint.sh
#ENTRYPOINT [ "./entrypoint.sh"]


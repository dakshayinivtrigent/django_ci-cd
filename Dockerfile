FROM python:3.11

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt /app/
RUN pip install --upgrade pip setuptools
RUN pip install -r requirements.txt

COPY . /app/

CMD [ "gunicorn", "--config" , "gunicorn_config.py", "myproject.wsgi:application" ]


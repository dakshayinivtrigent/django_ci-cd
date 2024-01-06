FROM python

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . code
WORKDIR /code

ENV PYTHONUNBUFFERED=1

RUN python manage.py migrate

EXPOSE 8000

ENTRYPOINT [ "python", "manage.py" ]
# CMD ["runserver","127.0.0.1:8000"]
CMD ["runserver", "0.0.0.0:8001"]

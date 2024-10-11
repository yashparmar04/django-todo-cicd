FROM python:3

WORKDIR /data

USER jenkins

RUN pip install django==5.1.2

COPY . .

RUN python manage.py migrate

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]



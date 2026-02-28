FROM python:3
RUN pip install django==6.0.2
WORKDIR /app
COPY . /app
RUN python manage.py migrate
CMD ["python","manage.py", "runserver","0.0.0.0:8000"]

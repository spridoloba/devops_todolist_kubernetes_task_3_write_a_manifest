FROM python:3.11-slim

WORKDIR /app

COPY src/requirements.txt .

COPY src/ .

RUN pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8080 --noreload"]
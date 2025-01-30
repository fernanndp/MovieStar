FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip && pip install -r requirements.txt

EXPOSE 8000

CMD ["gunicorn", "appflix.wsgi:application", "--bind", "0.0.0.0:8000"]

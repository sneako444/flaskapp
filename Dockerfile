# Use an official Python runtime
FROM python:3.9

WORKDIR /app

COPY . /app

RUN pip install flask

# Set FLASK_APP explicitly
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000

EXPOSE 5000

CMD ["flask", "run"]
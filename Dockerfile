FROM python:3.7.0b5-alpine3.7

COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt

COPY . /src
WORKDIR /src

ENV FLASK_APP=app.py
ENV FLASK_ENV=development

CMD ["flask", "run", "--host=0.0.0.0"]

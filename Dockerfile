FROM python:3.7.0b5-alpine3.7

ENV FLASK_APP=app.py
ENV FLASK_ENV=development

COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt

ENV USER=guest
USER 405

COPY . /src
WORKDIR /src

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]

FROM python:3.6

WORKDIR /srv/app
COPY . ./
RUN pip install -e .

RUN export FLASK_APP=run.py
ENTRYPOINT ["flask", "run"]

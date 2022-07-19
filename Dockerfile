FROM python:slim-buster
WORKDIR /usr/scr/app

COPY requirements.txt /usr/scr/app/

RUN pip3 install -r requirements.txt

COPY . /usr/scr/app

CMD [ "python3", "./manage.py", "runserver", "0.0.0.0:8000"  ]

EXPOSE 8000



# syntax=docker/dockerfile:1

#FROM python:3.8-slim-buster
FROM python:3.12-rc-bullseye

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt



COPY . .



#CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

#CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "-p", "80"]

CMD ["gunicorn", "-w", "4", "app:app", "--bind", "0.0.0.0:80"]
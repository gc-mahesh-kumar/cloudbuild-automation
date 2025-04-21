#FROM python:3.12-alpine  
FROM python:3.12-bullseye

# App
WORKDIR /app
COPY . ./

#Requirments.txt
RUN pip3 install Flask

WORKDIR /app
COPY . /app
ENTRYPOINT ["python3", "main.py"]
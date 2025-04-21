FROM python:3.12-alpine  

# App
WORKDIR /app
COPY . ./

#Requirments.txt
RUN pip3 install Flask

WORKDIR /app
COPY . /app
ENTRYPOINT ["python3", "main.py"]
FROM python:3.8-alpine  

# App
WORKDIR /app
COPY . ./

#Requirments.txt
RUN pip3 install Flask>=3.1.0

WORKDIR /app
COPY . /app
ENTRYPOINT ["python3", "main.py"]
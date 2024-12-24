#use an official python iamge
FROM python:3.9-slim

#set up the working directory
WORKDIR / app

#copy the application files into the container
copy . .

#Install required dependencies
RUN pip install --no-cache-dir -r requirements.txt

#Expose the port Dlask will run on
Expose 5000

#Commad to run the app
cmd ["python","app.py"]



sudo docker push tejaswini2000/flask-app:latest

sudo docker tag flask-app tejaswini2000/flask-app:latest
sudo docker login -u <tejaswini2000>
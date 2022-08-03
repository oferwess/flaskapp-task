# Image to use for flask app
FROM python:3.8-alpine
# Changing default dir inside the container to flask app directory
WORKDIR /app
# Copy the requirements file for flask excecutaiton into the container
COPY ./app/requirements.txt ./requirements.txt
# Installing the requirements for flask app`
RUN pip install -r ./requirements.txt
# Copy all the app content directory into the container
COPY /app .

#run falsk app
#ENTRYPOINT [ "python" ]
#CMD [ "python3", "server.py", "5000"]
#CMD [ "server.py" ]

ENTRYPOINT FLASK_APP=./server.py flask run --host=0.0.0.0
#EXPOSE 3000
#Get Docker hub username nad passwrod by shell script
#RUN ["chmod", "+x", "./credinput.sh"]
#ENTRYPOINT [ "/app/credinput.sh" ]
#RUN sh ./credinput.sh
#Push docker image to Docker Hub
#CMD [ "" ] oferwess/flaskapp:latest
# Running the Flask app on localhost
#ENTRYPOINT FLASK_APP=./server.py flask run --host=0.0.0.0
FROM python:3.10
COPY . /app
COPY . .
WORKDIR /app
RUN python3 -m pip install --upgrade pip
RUN pip3 install -r requirements.txt
EXPOSE 5001
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
#FROM python:3.10.9-slim-buster 
#WORKDIR /salary-prediction
#COPY . . 
#RUN pip3 install -r requirements.txt
#CMD ["python3" , "app.py"]

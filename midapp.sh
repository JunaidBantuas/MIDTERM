#!/bin/bash

mkdir tempdir
mkdir tempdir/templates
mkdir tempdir/static

cp midterm_app.py tempdir/.
cp -r templates/* tempdir/templates/.
cp -r static/* tempdir/static/.
cp requirements.txt tempdir/.

echo "FROM python" > tempdir/Dockerfile
echo "COPY ./requirements.txt /home/myapp/" >> tempdir/Dockerfile
echo "RUN pip install -r /home/myapp/requirements.txt" >> tempdir/Dockerfile
echo "COPY ./static /home/myapp/static/" >> tempdir/Dockerfile
echo "COPY ./templates /home/myapp/templates" >> tempdir/Dockerfile
echo "COPY ./midterm_app.py /home/myapp/" >> tempdir/Dockerfile
echo "EXPOSE 5050" >> tempdir/Dockerfile
echo "CMD python3 /home/myapp/midterm_app.py" >> tempdir/Dockerfile

cd tempdir
docker build -t appexam .
docker run -t -d -p 5050:5050 --name apprunning appexam 
docker ps -a 
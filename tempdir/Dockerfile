FROM python
COPY ./requirements.txt /home/myapp/
RUN pip install -r /home/myapp/requirements.txt
COPY ./static /home/myapp/static/
COPY ./templates /home/myapp/templates
COPY ./midterm_app.py /home/myapp/
EXPOSE 5050
CMD python3 /home/myapp/midterm_app.py

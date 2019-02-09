FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential procps
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
#ENTRYPOINT ["python"]
#CMD ["app.py"]
#CMD ["bash -c \"echo 'Starting'; while true; do python -u app.py; sleep 4; echo 'restarting'; done\""]
#ENTRYPOINT "python app.py" && "/bin/bash -c \"sleep 10; pkill python;\""
CMD ["/app/runscript.sh"]

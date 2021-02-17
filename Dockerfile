FROM alpine
RUN apk add python3 py3-pip
COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt
COPY app.py /usr/src/app/
<<<<<<< HEAD
COPY templates/index.html /usr/src/app/templates/
COPY static/*   /usr/src/app/static/
COPY model/*    /usr/src/app/model/
EXPOSE 3000
CMD ["python3", "/usr/src/app/app.py"]
=======
COPY templates/* /usr/src/app/templates/
COPY static/*   /usr/src/app/static/
COPY model/*    /usr/src/app/model/
EXPOSE 3000
CMD ["python3", "/usr/src/app/app.py"]
>>>>>>> 0e0b8e64b8364d36acd87eae6e3f9dfef2a8d350

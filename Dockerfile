FROM alpine
RUN apk add python3 py3-pip
COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt
COPY app.py /usr/src/app/
COPY templates/* /usr/src/app/templates/
COPY static/*   /usr/src/app/static/
COPY model/*    /usr/src/app/model/
EXPOSE 3000
CMD ["python3", "/usr/src/app/app.py"]

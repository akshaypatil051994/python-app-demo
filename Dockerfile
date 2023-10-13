FROM tomcat 9.0.80

MAINTAINER manager

COPY . /app

WORKDIR /app

EXPOSE 8080

RUN pip install -r requirements.txt

ENTRYPOINT ["tomcat", "app.py"]

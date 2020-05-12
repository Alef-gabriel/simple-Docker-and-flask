# !alpine container
FROM alpine:3.10
#indentifc
MAINTAINER alef <alefgabrielr@gmail.com>
#comand
RUN apk add --no-cache python3-dev \
    && pip3 install --upgrade pip
#import requirements.txt
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app
#comand
RUN pip install -r requirements.txt
#my diretory
COPY . /app

ENTRYPOINT [ "python3" ]
#file for inicialization
CMD [ "src/app.py" ]
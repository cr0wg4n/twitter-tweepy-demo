FROM python:3.8-alpine

ENV PYTHONUNBUFFERED 1
ENV LANG C.UTF-8
RUN mkdir /app
WORKDIR /app
ADD /requirements.txt /app/
RUN pip install --upgrade pip && pip install -r requirements.txt
ADD . /app/

CMD [ "python","main.py" ]

# docker build -t twitter:demo .

# docker run twitter:demo --detach
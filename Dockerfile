FROM python:3.10

WORKDIR /data

RUN pip install django==3.2

COPY . .

COPY entrypoint.sh .

RUN chmod +x entrypoint.sh

EXPOSE 8000

CMD ["./entrypoint.sh"]

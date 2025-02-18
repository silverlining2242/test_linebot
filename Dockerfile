FROM python:3.8-slim

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y gcc libpcre3-dev

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

CMD ["python", "app.py"]
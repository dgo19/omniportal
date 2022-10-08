FROM docker.io/library/python:3-slim-bullseye

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "-m flask --app omniportal run --host 0.0.0.0 --port 5000" ]
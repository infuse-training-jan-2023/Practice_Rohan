FROM python:3.8-alpine

COPY ./requirements.txt ./flask/requirements.txt

WORKDIR /flask

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "src/main.py"]
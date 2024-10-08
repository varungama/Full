FROM python:3.8-slim
FROM ollama/ollama

COPY ./pull-llama3.sh /pull-llama3.sh

COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

CMD fastapi run --reload
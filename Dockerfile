FROM python:3.11-slim-bullseye

WORKDIR /code

COPY ./src /code/

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

EXPOSE 5000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5000"]]

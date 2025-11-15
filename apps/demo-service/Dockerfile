# demo-service Dockerfile
FROM python:3.11-slim
WORKDIR /app
COPY apps/demo-service/requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt
COPY apps/demo-service/src /app
CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080" ]

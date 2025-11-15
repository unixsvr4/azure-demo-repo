from fastapi import FastAPI
import os

app = FastAPI()

@app.get('/')
def read_root():
    return { "message": "Hello from the demo service!", "env": os.getenv("ENV", "dev") }

@app.get('/health')
def health():
    return { "status": "ok" }

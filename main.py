from fastapi import FastAPI
from prometheus_fastapi_instrumentator import Instrumentator

app = FastAPI()

# Instrument the FastAPI application for Prometheus
Instrumentator().instrument(app).expose(app)

@app.get("/")
def root():
    return {"title": "Hello world"}
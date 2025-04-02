FROM python:3.10-slim

WORKDIR /app

# Installera systempaket
RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

# Installera Langflow direkt från PyPI
RUN pip install --no-cache-dir langflow

# Exponera port
EXPOSE 7860

# Kör applikationen
CMD ["langflow", "run", "--host", "0.0.0.0", "--port", "7860"]

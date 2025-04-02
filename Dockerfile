FROM python:3.10-slim

WORKDIR /app

# Installera nödvändiga paket
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Kopiera och installera applikationen
COPY . /app/
RUN pip install --no-cache-dir -e ".[dev]"

# Exponera port
EXPOSE 7860

# Sätt miljövariabler
ENV HOST=0.0.0.0
ENV PORT=7860

# Kör applikationen
CMD ["python", "-m", "langflow", "run", "--host", "0.0.0.0", "--port", "7860"]

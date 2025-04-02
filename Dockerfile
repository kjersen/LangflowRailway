FROM logspace/langflow:latest

# Skapa en databasdirektorie och ge skrivrättigheter
RUN mkdir -p /data && chmod 777 /data

# Skapa en startup-skript
WORKDIR /app
RUN echo '#!/bin/bash' > /app/start.sh && \
    echo 'echo "PORT value: $PORT"' >> /app/start.sh && \
    echo 'export LANGFLOW_DATABASE_URL="sqlite:////data/langflow.db"' >> /app/start.sh && \
    echo 'python -m langflow run --host 0.0.0.0 --port 8000' >> /app/start.sh && \
    chmod +x /app/start.sh

# Använd startskriptet som entry point
CMD ["/app/start.sh"]

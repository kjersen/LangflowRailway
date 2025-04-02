FROM logspace/langflow:latest

# No need to set ENV PORT=$PORT as Railway will inject it

# Use shell form of CMD to ensure environment variable substitution works
CMD python -m langflow run --host 0.0.0.0 --port ${PORT}

FROM logspace/langflow:latest

# Exponera port (Railway läser PORT-miljövariabeln)
EXPOSE 7860

# Kör applikationen
CMD ["langflow", "run", "--host", "0.0.0.0", "--port", "7860"]

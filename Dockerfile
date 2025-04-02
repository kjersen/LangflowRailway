FROM logspace/langflow:latest

# Exponera port
EXPOSE 7860

# Kör applikationen med ett shell-kommando så att miljövariabeln expanderas korrekt
CMD langflow run --host 0.0.0.0 --port 7860

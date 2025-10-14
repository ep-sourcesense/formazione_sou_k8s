# Usa un'immagine ufficiale di Python come base
FROM python:3.10-slim

# Imposta la directory di lavoro nel container
WORKDIR /app

# Copia i file di progetto nel container
COPY . /app

# Installa le dipendenze
RUN pip install --no-cache-dir flask

# Esponi la porta su cui Flask gira
EXPOSE 5000

# Comando per avviare l'app Flask
CMD ["python", "app/app.py"]

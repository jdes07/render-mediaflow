FROM python:3.11-slim

WORKDIR /app

# Install the official core mediaflow package natively
RUN pip install --no-cache-dir mediaflow-proxy

# Expose Render's internal port
EXPOSE 10000

# Execute the application on port 10000
CMD ["uvicorn", "mediaflow_proxy.main:app", "--host", "0.0.0.0", "--port", "10000", "--workers", "4"]

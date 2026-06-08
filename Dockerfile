FROM mhdzumair/mediaflow-proxy:latest

# Force the application to use Render's internal assignment variable
EXPOSE 10000

# Execute the application on port 10000
CMD ["uvicorn", "mediaflow_proxy.main:app", "--host", "0.0.0.0", "--port", "10000"]

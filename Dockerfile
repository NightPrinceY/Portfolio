FROM python:3.11-alpine

WORKDIR /app

# Copy your static site files into /app
COPY . .

# Expose the port Hugging Face expects
EXPOSE 7860

# Run Python's simple HTTP server on port 7860 serving the /app directory
CMD ["python3", "-m", "http.server", "7860", "--directory", "/app"]

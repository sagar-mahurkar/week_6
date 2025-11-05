# Use official Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy app files and model
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port used by FastAPI
EXPOSE 8000

# Command to run the server
CMD ["uvicorn", "iris_fastapi:app", "--host", "0.0.0.0", "--port", "8000"]

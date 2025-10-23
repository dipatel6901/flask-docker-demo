# Use the official Python image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Expose Flask’s default port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]

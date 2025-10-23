# flask-docker-demo

Step 1: Create your project
Make a new folder:
mkdir flask-docker-demo
cd flask-docker-demo
Step 2: Create your app
Create a file called app.py:
from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "Hello from Flask inside Docker!"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
Step 3: Add a requirements.txt
flask
Step 4: Write your Dockerfile
Create a file named Dockerfile:
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
Step 5: Build and run the container
docker build -t flask-demo .
docker run -d -p 5000:5000 flask-demo
Then visit http://localhost:5000
You’ll see:
Hello from Flask inside Docker!

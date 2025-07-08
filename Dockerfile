# Use a small Python image
FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Copy and install requirements
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy source code
COPY . .

# Command to run the app
CMD ["python", "app.py"]

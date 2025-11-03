FROM python:3.11-slim

# Create working directory inside container
WORKDIR /app

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project files into container
COPY . .

# Expose Flask port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
# Your Solution

# Start from the official Python slim image
FROM python:3.9-slim

# Set the working directory to the parent folder of 'app'
WORKDIR /app

# Copy the requirements.txt to the container
COPY requirements.txt .

# Install the dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire contents into the container
COPY . .

# Expose the port on which FastAPI will run
EXPOSE 8001

# Command to run the FastAPI app using Uvicorn
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8001"]

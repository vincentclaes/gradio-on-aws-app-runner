# Use the official lightweight Python image with Python 3.10
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the local code to the container's working directory
COPY . .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set the command to run the streamlit app
ENV GRADIO_SERVER_PORT=8080 GRADIO_SERVER_NAME=0.0.0.0 
CMD ["python", "app.py"]
FROM ubuntu:latest

# Install system dependencies
RUN apt update -y && \
    apt install -y python3 python3-pip pipenv && \
    apt clean

# Set working directory
WORKDIR /app

# Copy your project files into the image
COPY . /app/

# Install Python dependencies using Pipenv
RUN pipenv install --system --deploy

# Expose the desired port (you had 800, CMD had 80)
EXPOSE 8000

# Run the application
CMD ["pipenv", "run", "python3", "main.py"]
# Or for FastAPI:
# CMD ["pipenv", "run", "uvicorn", "mains:app", "--host", "0.0.0.0", "--port", "8000"]

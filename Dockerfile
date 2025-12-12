FROM python:3.12-slim

# Security: create non-root user
RUN useradd -m -u 10001 appuser

WORKDIR /app

# Install deps first (better layer caching)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app ./app
COPY wsgi.py ./wsgi.py

# Runtime settings
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

EXPOSE 8000

USER appuser

# Gunicorn production server
CMD ["gunicorn", "-b", "0.0.0.0:8000", "wsgi:app"]

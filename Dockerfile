FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /admin

RUN apt-get update && apt-get install -y \
    libpq-dev gcc \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /admin/

RUN pip install --no-cache-dir -r requirements.txt

COPY . /admin/

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

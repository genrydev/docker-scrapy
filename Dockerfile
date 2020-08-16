FROM python:3.8.5

# Edit with mysql-client, postgresql-client, sqlite3, etc. for your needs.
# Or delete entirely if not needed.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY requirements /usr/src/app/
RUN pip install --no-cache-dir -r requirements

COPY . /usr/src/app

# For some other command
# CMD ["python", "app.py"]

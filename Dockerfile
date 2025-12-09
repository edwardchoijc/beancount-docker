FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY entrypoint.sh /usr/local/bin/fava-entrypoint
RUN chmod +x /usr/local/bin/fava-entrypoint

EXPOSE 5000

ENTRYPOINT ["/usr/local/bin/fava-entrypoint"]

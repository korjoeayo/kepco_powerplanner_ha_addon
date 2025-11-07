FROM python:3.11-slim-bullseye

RUN apt-get update && apt-get install -y \
    chromium \
    chromium-driver \
    jq \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /app
COPY . .

CMD [ "bash", "run.sh" ]

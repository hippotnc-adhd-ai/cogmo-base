FROM python:3.11-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl libnss3 libnspr4 libatk1.0-0 libatk-bridge2.0-0 \
    libcups2 libdrm2 libxkbcommon0 libxcomposite1 \
    libxdamage1 libxfixes3 libxrandr2 libgbm1 libasound2 \
    libpango-1.0-0 libcairo2 fonts-noto-cjk \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir playwright \
    && playwright install chromium

WORKDIR /app

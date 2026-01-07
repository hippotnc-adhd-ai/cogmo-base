# cogmo-base

Base Docker image for CogMo projects.

## Includes
- Python 3.11
- Playwright + Chromium
- Korean fonts (Noto CJK)

## Usage
```dockerfile
FROM ghcr.io/hippotnc-adhd-ai/cogmo-base:latest

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app/ ./app/
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
```

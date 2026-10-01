FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py .
# Utilisateur non-root, propriétaire de /app (pour écrire la base shop.db)
RUN useradd --uid 10001 --no-create-home appuser && chown appuser /app
USER 10001
EXPOSE 5000
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]

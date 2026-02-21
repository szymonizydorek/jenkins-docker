FROM python:3.9-slim
WORKDIR /app

# 1. Najpierw kopiujemy tylko plik z zależnościami
COPY requirements.txt .

# 2. Instalujemy paczki (ta warstwa zostanie zapamiętana, póki nie zmienisz requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt

# 3. Na samym końcu kopiujemy resztę kodu (app.py)
COPY . .

EXPOSE 5000
CMD ["python", "app.py"]

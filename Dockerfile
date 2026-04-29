FROM python:3.12-slim
WORKDIR /app
COPY . .
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --no-cache -r requirements.txt
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

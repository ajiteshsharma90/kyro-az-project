FROM python:3.9

# 
WORKDIR /cosmosdb-with-fastapi

# 
COPY . .

# 
RUN pip install --no-cache-dir --upgrade -r /cosmosdb-with-fastapi/requirements.txt

# 
COPY . .

# 
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]

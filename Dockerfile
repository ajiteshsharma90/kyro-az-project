FROM python:3.9
#FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7 
WORKDIR /cosmosdb-with-fastapi
COPY requirements.txt requirements.txt
RUN pip install fastapi
RUN pip install fastapi uvicorn
RUN pip install python-dotenv
RUN pip install aiohttp
RUN pip install azure-cosmos
COPY . .
EXPOSE 8000
CMD ["uvicorn", "--reload", "main:app","--host","0.0.0.0","--port", "80"]
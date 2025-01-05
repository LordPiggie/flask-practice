# We use this version of python because it is up to date and is lightweight.
FROM python:3.12-alpine
WORKDIR /app
COPY requirements.txt .
# It is important to allow trusted hosts to install from pypi as this is the library where our packages are stored.
RUN pip install --trusted-host pypi.python.org -r requirements.txt
COPY . .
EXPOSE 8080
ENTRYPOINT ["python", "/app.py"]

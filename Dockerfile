FROM python:3.8-slim

# set the working directory to /app
WORKDIR /app

# copy the requirements.txt file to the working directory
COPY requirements.txt .

# install the required Python packages
RUN pip install --no-cache -r requirements.txt

# copy the rest of the files to the working directory
COPY . .

EXPOSE 5000

CMD ["python3", "app.py"]
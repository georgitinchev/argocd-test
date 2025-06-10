FROM python:3.12-alpine3.21

# working dir set
WORKDIR /app

# current directory contents into container at /app
COPY . .

RUN pip install -r requirements.txt

# expose port
EXPOSE 5000

# run app.py on container launch
CMD ["python", "app.py"]


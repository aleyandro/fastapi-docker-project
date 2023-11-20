FROM python:3.11

WORKDIR /app

ADD main.py .

COPY . /app

# Install the required packages
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host=files.pythonhosted.org --no-cache-dir -r requirements.txt

#RUN pip install -r requirements.txt

CMD [ "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "15400" ]

FROM python:3.12.2-slim

EXPOSE 8080

COPY combat_iq /combat_iq
COPY models /models
COPY requirements.txt /requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# RUN CONTAINER LOCALLY
#CMD uvicorn combat_iq.api.api_file:app --host 0.0.0.0

# RUN CONTAINER ON THE CLOUD
CMD uvicorn combat_iq.api.api_file:app --host 0.0.0.0 --port 8080

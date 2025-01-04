# Docker file
FROM python:3.9-slim

ADD requirements.txt .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

ADD dataset.csv .
ADD employee_stats_app.py .

EXPOSE 7080

CMD ["python","employee_stats_app.py"]

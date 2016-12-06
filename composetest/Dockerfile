FROM python:2.7
ADD . /code
CMD ll /code
WORKDIR /code
CMD pwd
RUN pip install -r requirements.txt
CMD python /code/app.py
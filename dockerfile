FROM python:3.12.0
WORKDIR /code
COPY ./requirements.txt /code/requirements.txt

ENV TZ=Asia/Kolkata
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY . /code

EXPOSE 8000
CMD ["uvicorn","testing:app","--port","8000","--host","0.0.0.0"]
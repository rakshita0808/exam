FROM ubuntu
RUN apt update -y

RUN apt install python3 python3-pip pipenv -y

WORKDIR /app

COPY . /app/

RUN pipenv install -r requirements.txt

EXPOSE 800


# CMD  pipenv run uvicorn mains:app -host 0.0.0.0 --port 80
CMD pipenv run python3 ./main.py

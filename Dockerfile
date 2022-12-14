FROM python:3.9

WORKDIR /root

RUN git clone https://bitbucket.org/swsc/lookup

WORKDIR /app

COPY requirements.txt requirements.txt

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

COPY ./fossZero2Hero .

EXPOSE 8000

CMD [ "python", "main.py"]
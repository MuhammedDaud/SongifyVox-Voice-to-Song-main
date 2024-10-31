    FROM python:3.10.2

    RUN python -m pip install -U pip setuptools wheel

    COPY ./requirements.txt ./

    RUN pip install  -r requirements.txt

    RUN apt-get update && apt-get install -y ffmpeg
    COPY ./ ./

    WORKDIR /app
    CMD ["python","main.py"]

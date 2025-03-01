FROM python:3.10

WORKDIR /app/

COPY . /app/

RUN pip install onnxruntime soundfile pyyaml

VOLUME ["/app/assets", "/app/configs"]

EXPOSE 9266

CMD python3 /app/server.py --config /app/configs/default.yaml

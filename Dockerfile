FROM python:3.10

WORKDIR /app/

COPY . /app/

RUN pip install onnxruntime

VOLUME ["/app/assets", "/app/configs"]

EXPOSE 9266

ENTRYPOINT python3 /app/server.py --config

CMD /app/configs/default.yaml

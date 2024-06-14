FROM canal/osbase:v3-amd64

WORKDIR "/opt/canal/canal-adapter"

COPY ./src /opt/canal/canal-adapter

ENV LANG=C.UTF-8
ENV TZ=Asia/Shanghai
CMD ["sh","-c","sh /opt/canal/canal-adapter/bin/stop.sh && sh /opt/canal/canal-adapter/bin/startup.sh && tail -F /opt/canal/canal-adapter/logs/adapter/adapter.log"]

LABEL version="v1.1.7"
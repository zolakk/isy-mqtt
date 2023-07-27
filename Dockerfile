FROM ubuntu:latest
RUN apt-get update
RUN apt-get install python3 python3-pip git -y
RUN pip install git+https://github.com/mjcumming/ISY994v5.git
RUN pip install git+https://github.com/mjcumming/ISY-Homie-Bridge.git

ENV ISY_URL 127.0.0.1
ENV ISY_USERNAME isy_user
ENV ISY_PASSWORD isy_password
ENV MQTT_BROKER 127.0.0.1
ENV MQTT_PORT 1883
ENV MQTT_USERNAME null
ENV MQTT_PASSWORD null
ENV LOGGING_ENABLE true
ENV LOGGING_LEVEL DEBUG

COPY ["./startup.sh","/usr/local/bin/startup.sh"]
CMD ["/bin/bash","/usr/local/bin/startup.sh"]

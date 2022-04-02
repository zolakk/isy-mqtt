FROM ubuntu:latest
RUN apt-get update
RUN apt-get install python3 python3-pip git -y
RUN pip install git+https://github.com/mjcumming/ISY994v5.git
#RUN pip install ISY994-Homie3-Bridge
RUN pip install git+https://github.com/zolakk/ISY-Homie-Bridge.git

ENV ISY_URL 127.0.0.1
ENV ISY_USERNAME isy_user
ENV ISY_PASSWORD isy_password
ENV MQTT_BROKER 127.0.0.1
ENV MQTT_PORT 1883
ENV MQTT_USERNAME null
ENV MQTT_PASSWORD null
ENV LOGGING_ENABLE true
ENV LOGGING_LEVEL DEBUG

RUN /bin/echo -e "isy:\n  url: ${ISY_URL}\n  username: ${ISY_USERNAME}\n  password: ${ISY_PASSWORD}\n\nmqtt:\n  MQTT_BROKER: ${MQTT_BROKER}\n  MQTT_PORT: ${MQTT_PORT}\n  MQTT_USERNAME: ${MQTT_USERNAME}\n  MQTT_PASSWORD: ${MQTT_PASSWORD}\n  MQTT_SHARE_CLIENT: true\n\nlogging:\n  enable: ${LOGGING_ENABLE}\n  level: ${LOGGING_LEVEL}" > /etc/isy_homie.yml
CMD ["/usr/bin/python3","/usr/local/bin/isy_homie_start.py"]

#!/bin/bash
/bin/echo -e "isy:\n  url: ${ISY_URL}\n  username: ${ISY_USERNAME}\n  password: ${ISY_PASSWORD}\n\nmqtt:\n  MQTT_BROKER: ${MQTT_BROKER}\n  MQTT_PORT: ${MQTT_PORT}\n  MQTT_USERNAME: ${MQTT_USERNAME}\n  MQTT_PASSWORD: ${MQTT_PASSWORD}\n  MQTT_SHARE_CLIENT: true\n\nlogging:\n  enable: ${LOGGING_ENABLE}\n  level: ${LOGGING_LEVEL}" > /etc/isy_homie.yml
/usr/bin/python3 /usr/local/bin/isy_homie_start.py

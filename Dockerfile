FROM hypriot/rpi-python

RUN pip install paho-mqtt

COPY agent.py /agent.py

ENV SOLARMAX_HOST 192.168.2.123
ENV SOLARMAX_PORT 12345
ENV MQTT_HOST mqtt
ENV MQTT_PORT 1883

CMD ["python","/agent.py"]

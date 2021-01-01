FROM hypriot/rpi-python

RUN pip install paho-mqtt

COPY agent.py /agent.py

ENV SOLARMAX_HOST 192.168.8.3
ENV SOLARMAX_PORT 12345
ENV MQTT_HOST 192.168.0.10
ENV MQTT_PORT 1883

CMD ["python","/agent.py"]

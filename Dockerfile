FROM tensorflow/tensorflow:latest-gpu

WORKDIR /tf-moonanul

VOLUME [ "/ds004146" ] 

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

EXPOSE 8888

ENTRYPOINT ["jupyter","lab","--ip=0.0.0.0","--port=8888","--allow-root","--no-browser"]
FROM tensorflow/tensorflow:latest-gpu

WORKDIR /tf-moonanul

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . /tf-moonanul/

EXPOSE 8888

ENTRYPOINT ["jupyter","lab","--ip=0.0.0.0","--port=8888","--allow-root","--no-browser"]

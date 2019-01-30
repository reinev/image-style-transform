
FROM python:3.6

ENV FLASK_APP web.py

WORKDIR /ImageStyleTransform

COPY . /ImageStyleTransform

RUN pip install --upgrade pip

RUN pip install --trusted-host pypi.python.org -r requirements.txt

RUN python3 -m pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.12.0-cp36-cp36m-linux_x86_64.whl

EXPOSE 80

CMD ["python", "web.py"]

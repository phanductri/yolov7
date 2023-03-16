FROM nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04
WORKDIR /app
RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev build-essential hdf5-tools libgl1 libgtk2.0-dev
COPY . /app
RUN pip3 install -r setup.txt
CMD ["python3", "finetuning.py"]

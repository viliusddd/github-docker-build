FROM python:2

WORKDIR /usr/src/app

# install dependencies
RUN "curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -"

RUN apt-get update && apt-get install -y git-lfs \
    blender \
    imagemagick \
    nodejs

RUN mvm install v12.12

RUN npm install -g gltf-pipeline

RUN pip install --no-cache-dir -r requirements.txt
RUN python -m pip install mock
RUN git lfs install

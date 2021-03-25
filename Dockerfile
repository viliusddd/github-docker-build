FROM node:10-slim


WORKDIR /usr/src/app

RUN echo cwd
RUN which python

RUN apt-get update && apt-get install -y \
  software-properties-common \
  blender \
  imagemagick \
  nodejs \
  curl

RUN mvm install v12.12

RUN npm install -g gltf-pipeline

RUN pip install --no-cache-dir -r requirements.txt
RUN python -m pip install mock
RUN git lfs install

FROM python:2


WORKDIR /usr/src/app
RUN ll /
COPY /github/workspace/requirements/ requirements/
RUN apt-get update && apt-get install -y \
  software-properties-common \
  blender \
  imagemagick \
  nodejs \
  curl

# RUN mvm install v12.12

# RUN npm install -g gltf-pipeline

# RUN python -m pip install --no-cache-dir -r requirements.txt
RUN python -m pip install mock
# RUN git lfs install

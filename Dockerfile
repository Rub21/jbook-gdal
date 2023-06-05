FROM osgeo/gdal:latest

RUN apt update
RUN apt install -y python3-pip
RUN pip install notebook rasterio httpx Pillow awscli

RUN pip install --upgrade jupyter_http_over_ws>=0.0.7 && \
  jupyter serverextension enable --py jupyter_http_over_ws

# Start Jupyter Lab
CMD ["/bin/bash", "-c", "jupyter notebook \
  --NotebookApp.allow_origin='https://colab.research.google.com' \
  --port=8888 \
  --NotebookApp.port_retries=0"]



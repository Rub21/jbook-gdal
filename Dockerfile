FROM osgeo/gdal:latest

RUN apt update
RUN apt install -y python3-pip
RUN pip install rasterio \
    httpx \
    Pillow \
    awscli \
    matplotlib \
    jupyter \
    jupyterlab \
    scikit-image \
    shapely \
    pyproj
WORKDIR /notebooks
EXPOSE 8888
ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root", "--notebook-dir=/home/jovyan"]
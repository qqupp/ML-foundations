# Details of the base image are here: hub.docker.com/r/jupyter/scipy-notebook
# Tag [29f53f8b9927] is latest image as of Apr 23, 2020 
FROM jupyter/scipy-notebook:85f615d5cafa

USER $NB_USER

RUN pip cache purge

# Install TensorFlow: 
RUN pip install tensorflow==2.8.0

# Install PyTorch:
RUN pip install torch==1.11.0

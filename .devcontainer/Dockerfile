FROM quay.io/jupyter/base-notebook:2025-09-16 

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends gnuplot octave git

USER jovyan

RUN pip install --no-cache-dir octave_kernel && \
    python -m octave_kernel install --user

ENV OCTAVE_EXECUTABLE=/usr/bin/octave

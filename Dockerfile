FROM lnls/fac-python

RUN apt-get update && apt-get install -y git && \
    rm -rf /var/lib/apt/lists/* && \
    git clone https://github.com/lnls-fac/mathphys.git && \
    cd /mathphys && python3.6 setup.py install && \
    cd / && git clone https://github.com/lnls-sirius/dev-packages.git && \
    cd /dev-packages/siriuspy && \
    pip3.6 install -r requirements.txt && \
    python3.6 setup.py install && \
    cd / && git clone https://github.com/lnls-sirius/machine-applications.git && \
    cd /machine-applications && \
    make install-scripts
# RUN git clone https://github.com/lnls-sirius/pru-serial485.git

ENTRYPOINT bash

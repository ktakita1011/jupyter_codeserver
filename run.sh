#/bin/bash

PASSWORD=jupyter code-server --bind-addr=0.0.0.0:8080 --auth=password /workdir &
jupyter notebook --allow-root
FROM jupyter/tensorflow-notebook

USER root
#for vscode extention
RUN apt-get -y update && \
	apt-get -y install curl
RUN curl -fsSL https://code-server.dev/install.sh | sh
RUN code-server \
  --install-extension ms-python.python \
  --install-extension ms-ceintl.vscode-language-pack-ja

#for python libraries
RUN pip install --upgrade pip

RUN pip install seaborn && \
	pip install japanize-matplotlib

RUN sed -i "s/# c.NotebookApp.ip = 'localhost'/c.NotebookApp.ip = '0.0.0.0'/" /home/jovyan/.jupyter/jupyter_notebook_config.py && \
    sed -i "s/# c.NotebookApp.token = '<generated>'/c.NotebookApp.token = 'pass'/" /home/jovyan/.jupyter/jupyter_notebook_config.py && \
    sed -i 's/# c.NotebookApp.disable_check_xsrf = False/c.NotebookApp.disable_check_xsrf = True/' /home/jovyan/.jupyter/jupyter_notebook_config.py && \
    sed -i 's/# c.NotebookApp.port = 8888/c.NotebookApp.port = 8888/' /home/jovyan/.jupyter/jupyter_notebook_config.py && \
    sed -i "s/#c.NotebookApp.notebook_dir = ''/c.NotebookApp.notebook_dir = '/workdir'" /home/jovyan/.jupyter/jupyter_notebook_config.py

ADD run.sh /opt/run.sh
RUN chmod 700 /opt/run.sh

RUN mkdir /workdir
WORKDIR /workdir
CMD /opt/run.sh

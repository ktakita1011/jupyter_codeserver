FROM ktakita1011/simple_jupyter_codeserver

USER root
RUN pip install seaborn && \
	pip install japanize-matplotlib

RUN sed -i "s/# c.NotebookApp.ip = 'localhost'/c.NotebookApp.ip = '0.0.0.0'/" /home/jovyan/.jupyter/jupyter_notebook_config.py && \
    sed -i "s/# c.NotebookApp.token = '<generated>'/c.NotebookApp.token = ''/" /home/jovyan/.jupyter/jupyter_notebook_config.py && \
    sed -i 's/# c.NotebookApp.disable_check_xsrf = False/c.NotebookApp.disable_check_xsrf = True/' /home/jovyan/.jupyter/jupyter_notebook_config.py && \
    sed -i "s/#c.NotebookApp.notebook_dir = ''/c.NotebookApp.notebook_dir = '/workdir'" /home/jovyan/.jupyter/jupyter_notebook_config.py

#if you want to set password. set this code
#RUN sed -i "s/c.NotebookApp.token = ''/c.NotebookApp.token = 'password'/" /home/jovyan/.jupyter/jupyter_notebook_config.py

ADD run.sh /opt/run.sh
RUN chmod 700 /opt/run.sh

RUN mkdir /workdir
WORKDIR /workdir
CMD /opt/run.sh

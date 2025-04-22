FROM jupyter/base-notebook

USER root
RUN apt-get update && apt-get install -y postgresql-client

COPY ./requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Disable Jupyter authentication
RUN echo "c.NotebookApp.token = ''" >> /etc/jupyter/jupyter_notebook_config.py && \
    echo "c.NotebookApp.password = ''" >> /etc/jupyter/jupyter_notebook_config.py

EXPOSE 8888
CMD ["start-notebook.sh"]

FROM apache/airflow:2.2.1

COPY new_requirements.txt .
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install -r new_requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
COPY ./dags dags
COPY ./plugins plugins
COPY ./airflow_docker.cfg airflow.cfg
FROM apache/airflow:2.0.0-python3.6
USER root
RUN apt-get update \
	&& apt-get install -y vim \
	&& apt-get install -y procps \
	&& apt-get install -y less
USER airflow

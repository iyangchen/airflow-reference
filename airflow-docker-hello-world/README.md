Apache Airflow is a great tool to programmatically author, schedule, and monitor workflows; however, the initial setup can sometimes be confusing as there are many ways to configure this application. Not to mention that the installation on Windows or MacOS can also be a headache due to the fact that Airflow is primarily written for Linux.

The goal of this project is to utilize [docker-compose](https://docs.docker.com/compose/) and the [official docker image of Airflow](https://hub.docker.com/r/apache/airflow) to provide an easy starting point to experiment with this great tool.


## Requirements

This project is tested with:

|               | version |
| ------------  | --------| 
| docker        | 20.10.0 | 
| docker-compose| 1.27.4  | 


## Project Structure

There will be three docker containers, **postgres**, **scheduler**, and **webserver**. init.sh is triggered to run ```db init``` to initialize the metadata database during the startup of **webserver**.

airflow.cfg, unittests.cfg, and webserver_config.py are mounted to the containers of **scheduler** and **webserver**.

**dags/** contains some [example dags imported from apache/airflow](https://github.com/apache/airflow/tree/master/airflow/example_dags).

```bash
.
├── docker-compose.yml
├── airflow.cfg
├── unittests.cfg
├── webserver_config.py
├── dags
│   ├── example_bash_operator.py
│   ├── ...
│   ├── tutorial.py
│   ├── tutorial_etl_dag.py
│   └── tutorial_taskflow_api_etl.py
├── scheduler
│   ├── Dockerfile
│   └── logs
└── webserver
    ├── Dockerfile
    ├── init.sh
    └── logs
```


## Getting started

To bring up the service, just run:

```bash
docker-compose up
```
Go to http://localhost:8080/, you should be able to login with: <br />
username: **admin** <br />
password: **admin** 

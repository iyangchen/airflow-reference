#!/usr/bin/env bash
airflow db init
airflow users create -u admin -p admin -e admin@example.com -f admin -l admin -r Admin
airflow webserver
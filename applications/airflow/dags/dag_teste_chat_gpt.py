from datetime import datetime
from airflow import DAG
from airflow.operators.bash import BashOperator

with DAG(
    dag_id='dag_om_test',
    start_date=datetime(2024, 8, 1),
    schedule_interval='@weekly',
    catchup=False,
    tags=['test']
) as dag:
    
    t1 = BashOperator(
        task_id='print_hello',
        bash_command='echo Hello from Airflow!'
    )

    t2 = BashOperator(
        task_id='print_goodbye',
        bash_command='echo Goodbye from Airflow!'
    )

    t1 >> t2

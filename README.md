# DBT Project on Customer Data

## Introduction
This repository contains a dbt (data build tool) project for transforming and analyzing data. Follow the instructions below to set up and run the project.

## Setup

1. Python Virtual Environment
   Create and activate a Python virtual environment, and run the following commands in your preferred OS terminal.

    a. For Mac-OS:
   
   python3 -m venv dbt-core-env
   
   source dbt-core-env/bin/activate

    b. For Windows:
   
   python -m venv dbt_venv
   
   dbt-core-env\Scripts\activate


3. Install Dependencies 
    
    pip3 install dbt-snowflake

4. Configure dbt
   
    Create a directory for dbt configuration:
    mkdir $HOME/.dbt

5. Then run the command dbt init.

6. Now the dbt will start configuring and will require the following details through command line input in order to setup a connection with Snowflake:
    snowflake url:
    username:
    password:
    role of user:
    Datawarehouse name:
    Database name:
    schema name:

    After giving these inputs, the connect will be setup with the Snowflake datawarehouse.
    Note: Make sure datawarehouse is not in Suspended state, if it is then resume it using "ALTER DW_NAME RESUME"

7. Now you can clone the repository from git to local, and run the below commands from Amann_HevoData_Assignment   

6. Please Run dbt life cycle commands :

   
      a. dbt debug  --> to test connection to snowflake destination Warehouse
   
      b. dbt init   --> to Initialize your dbt project
   
      c. dbt compile --> to compile you dbt models
   
      d. dbt run     --> to run your dbt models to transform your data
   
      e. dbt test -s customers   --> Run tests to validate the rule definitions.

**Support**
Open an issue in this repository if you run into any problems or have any inquiries.
  
This README file can be further customised to meet the needs or preferences of your particular project. Please let me know if you require any other help!

Additional Information
For more information about dbt, refer to the  https://docs.getdbt.com/best-practices
   
      

   
      
    



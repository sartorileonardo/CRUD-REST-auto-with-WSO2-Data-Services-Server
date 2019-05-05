The WSO2 Data Services Server simplifies service-oriented architecture development efforts by providing an easy-to-use platform for integrating data stores, creating composite data views, and hosting data services. It supports access to secure and managed data through federated data stores, data service transactions, and data transformation and validation using an agile, agile and developer-friendly development approach. Provides federation support by combining data from multiple sources in single response or resource and also supports nested queries between data sources.

![dss_explanation](https://cloud.githubusercontent.com/assets/7613528/25725607/23f763a2-30f7-11e7-966c-c4c97c46864f.jpg)


More product information WSO2 DSS at: https://docs.wso2.com/display/DSS322/Downloading+the+Product

In this experiment a CRUD was created using WSO2 DSS + MySQL Database.

In a few minutes it is possible to create the CRUD BeckEnd with the tool.

It follows step by step for the development of the experience:

Note: Verify that the Oracle 7 Java environment variables are preconfigured (JAVA_HOME).

1- Download WSO2 DSS and unpack.

2- Copy a JDBC MySql lib (mysql-connector-java-5.1.40.zip) into the "repository / components / lib" path of the WSO2 DSS tool.

3- Run the "wso2server.sh" file in the "/ bin" directory if the OS is Linux or "wso2server.bat" for Windows OS.

4- Create a Database in MySQL as Script "Script_Create_Database.sql".

5- If the tool was successfully executed, it will display something like:
"[2017-04-03 11: 08: 15,957] INFO {org.wso2.carbon.ui.internal.CarbonUIServiceComponent} - Mgt Console URL: https://localhost:9443/carbon/"

6- Access this address through the Chrome browser or Firefox and enter the default user and password "admin".

![login_dss](https://cloud.githubusercontent.com/assets/7613528/25725637/50a17014-30f7-11e7-95bc-c8cafc2041fd.png)


7- Add the link in the security exception if the browser asks for it.

8- Access the menu path Settings> Datasources> Add Datasources.

9- Fill in the form with the data:

> Datasource Type: RDBMS

> Name: control_product_db

> Database Engine: MySQL

> Driver: com.mysql.jdbc.Driver

> URL: jdbc: mysql: // localhost: 3306 / control_product_db

> User Name: "database user"

> Password: "database password"

![dss_datasource](https://cloud.githubusercontent.com/assets/7613528/25725690/8b54d214-30f7-11e7-84dc-63fd8f14d7c2.png)


10- Click the "Test Connection" button, if the tool shows the message "Connection is healthy", you have done everything correctly and the tool already has a connection to the DB.

11- Access the Main> Generate menu path and fill in the data:

> Carbon Datasource (s): control_product_db

> Database Name: control_product_db

![dss_create_service_step_1](https://cloud.githubusercontent.com/assets/7613528/25725734/af09b9e0-30f7-11e7-995f-74652d518f76.png)


12- Click the "Next" button.

![dss_create_service_step_2](https://cloud.githubusercontent.com/assets/7613528/25725799/e3eefef4-30f7-11e7-876d-40875d016c67.png)


13- Soon the tool will display the table where CRUD will be carried out, keep the "product" table marked and click "Next".
In Service Generation, select the option of "Single Service", that is a service for CRUD of all the table, since we only have the table product.

14- Fill in the data with:

> Data Service Namespace: ProductService

> Data Service Name: ProductService

![dss_create_service_step_3](https://cloud.githubusercontent.com/assets/7613528/25725841/0a89904c-30f8-11e7-8caf-1c4ade66b9d0.png)

15- Click "Next" at to "Finish".

![dss_create_service_step_4](https://cloud.githubusercontent.com/assets/7613528/25725890/3cdc81e4-30f8-11e7-978b-13378d23f96a.png)


16- The tool will return the information: "Following Service (s) are Deployed Sucessfully" ProductService.

17- Click "Finish" and after 30 seconds, access the Main > Services > List menu, where you will see ProductService created.

![dss_services_list](https://cloud.githubusercontent.com/assets/7613528/25726004/87855806-30f8-11e7-9063-90474faa3535.png)

![dss_product_service](https://cloud.githubusercontent.com/assets/7613528/25726041/ab6afeec-30f8-11e7-893c-255e92426ba6.png)


18- Clicking the "Try this service" option, the tool will open a new tab in the browser with a graphical interface (FrontEnd) with the options of:

> Delete_product_operation

> Insert_product_operation

> Select_all_product_operation

> Select_with_key_product_operation

> Update_product_operation

19- After choosing the insert operation for example, you must complete the values ​​inside the XML tags, such as the insert option:

![dss_insert_product](https://cloud.githubusercontent.com/assets/7613528/25726069/ce7ae816-30f8-11e7-9002-759fe62aefb9.png)

20- After filling the data in the XML interface, you must click the "Send" button to perform the operation.

![dss_list_all_products](https://cloud.githubusercontent.com/assets/7613528/25726136/145eba74-30f9-11e7-9dce-8c05bb67a2e3.png)

21- Finish !!!


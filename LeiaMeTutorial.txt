The WSO2 Data Services Server simplifies service-oriented architecture development efforts by providing an easy-to-use platform for integrating data stores, creating composite data views, and hosting data services. It supports access to secure and managed data through federated data stores, data service transactions, and data transformation and validation using an agile, agile and developer-friendly development approach. Provides federation support by combining data from multiple sources in single response or resource and also supports nested queries between data sources.

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

10- Click the "Test Connection" button, if the tool shows the message "Connection is healthy", you have done everything correctly and the tool already has a connection to the DB.

11- Access the Main> Generate menu path and fill in the data:

> Carbon Datasource (s): control_product_db

> Database Name: control_product_db

12- Click the "Next" button.

13- Soon the tool will display the table where CRUD will be carried out, keep the "product" table marked and click "Next".
In Service Generation, select the option of "Single Service", that is a service for CRUD of all the table, since we only have the table product.

14- Fill in the data with:

> Data Service Namespace: ProductService

> Data Service Name: ProductService

15- Click "Next".

16- The tool will return the information: "Following Service (s) are Deployed Sucessfully" ProductService.

17- Click "Finish" and after 30 seconds, access the Main> Services> List menu, where you will see ProductService created.

18- Clicking the "Try this service" option, the tool will open a new tab in the browser with a graphical interface (FrontEnd) with the options of:

> Delete_product_operation

> Insert_product_operation

> Select_all_product_operation

> Select_with_key_product_operation

> Update_product_operation

19- After choosing the insert operation for example, you must complete the values ​​inside the XML tags, such as the insert option:

<Body>
   <P: insert_product_operation xmlns: p = "ProductService">
      <! - Exactly 1 occurrence ->
      <P: product_name> Pen </ p: product_name>
      <! - Exactly 1 occurrence ->
      <P: product_price> 1.00 </ p: product_price>
      <! - Exactly 1 occurrence ->
      <P: product_description> BIC pen </ p: product_description>
      <! - Exactly 1 occurrence ->
      <P: product_amount> 1 </ p: product_amount>
      <! - Exactly 1 occurrence ->
      <P: product_date_created> 2017-04-03 </ p: product_date_created>
      <! - Exactly 1 occurrence ->
      <P: is_active> 1 </ p: is_active>
      <! - Exactly 1 occurrence ->
      <P: is_created> 1 </ p: is_created>
   </ P: insert_product_operation>
</ Body>

20- After filling the data in the XML interface, you must click the "Send" button to perform the operation.

21- Finish !!!

To download the CRUD WSO2 DSS + MySQL from this lab, go to: https://goo.gl/PqL2zm

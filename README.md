# Taxi service
#### Current web app designed to simulate taxi service. Using this app you can:
-	Register new drivers
-	Add new manufacturer of cars
-	Add new cars
-	Delete cars, drivers, manufacturers (access on the “Display All Items” pages)
-	Assigning an existing driver to one or more cars
-	Get all information about drivers or cars, or manufacturers.
-	Get a list of cars assigned to specific driver
#### Allows access only to authorized users, and also provides the ability to register new one. This project follows the rules of SOLID and was created on 3-layered architecture:
-	Data access layer(DAO)
-	Application layer(services)
-	Presentation layer(controllers)
### DB schema of tables:
<img src="http://joxi.ru/ZrJ3VRdhbGbBpm.jpg">

### Using Technologies:
-	Tomcat (v9.0.56)
-	MySQL(v8.0.22)
-	JDBC
-	Javax.servlet(v4.0.1)
-	JSP
-	JSTL(v1.2)
-	log4j(v2.14.1)
-	Maven(v3.3.2)
-	HTML
### Steps for setup:
1. Configure Apache Tomcat for your IDE
2. Install MySQL, MySQL Workbench
3. Launch MySQL Workbench and run script from file “resources/init_db.sql”
4. Change URL, USERNAME, PASSWORD and JDBC DRIVER on your data in “src/main/java/taxi/util/ConnectionUtil”
5. Change path to log file <File name="LogToFile" fileName="_______"> in “src/main/resources/log4j2.xml”
6. After starting tomcat go to http://localhost:your_port that you specified while configuring tomcat. 

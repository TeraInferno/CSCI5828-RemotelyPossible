[![Stories in Ready](https://badge.waffle.io/TeraInferno/CSCI5828-RemotelyPossible.png?label=ready&title=Ready)](https://waffle.io/TeraInferno/CSCI5828-RemotelyPossible)
# CSCI5828-RemotelyPossible - DEVELOPER README
CSCI5828 Final Project for Team RemotelyPossible

This README is for developers and getting a local copy of the project set up.
For project information, design, and deployment, please visit

[RemotelyPossible Team Wiki](https://github.com/TeraInferno/CSCI5828-RemotelyPossible/wiki)

###Common Links
* [Gitter IM Room](https://gitter.im/CSCI5828-RemotelyPossible/Lobby)
* [Boards & Issues](https://github.com/TeraInferno/CSCI5828-RemotelyPossible#boards?repos=69412069)
* [Burndown chart] (https://github.com/TeraInferno/CSCI5828-RemotelyPossible#reports?report=burndown&milestoneId=2095123)
* [Velocity chart] (https://github.com/TeraInferno/CSCI5828-RemotelyPossible#reports?report=velocity)
* [Progress report] (https://github.com/TeraInferno/CSCI5828-RemotelyPossible/wiki/Progress-Report)
* [Wiki] (https://github.com/TeraInferno/CSCI5828-RemotelyPossible/wiki)

# Quick Start
1. Get a local copy
2. Inside the folder/directory, run:
```
mvn clean package
mvn exec:exec
```
3. Point your web browser at: http://127.0.0.1:8080/
4. Enabled Transparent 80/443 forwarding (run as root)
```
iptables -A PREROUTING -t nat -p tcp --dport 80 -j REDIRECT --to-port 8080
iptables -A PREROUTING -t nat -p tcp --dport 443 -j REDIRECT --to-port 8443
```

# Under the hood
Note: For simplicity, all package references will be shortened: edu.colorado.csci5828.remotelypossible.dlap -> dlap

## Webserver (Jetty) & Database (HyperSQL)
dlap.Servers host the main() method to start the database and webserver. Customizable settings can be found in resources/app.properties. By default everything listens on localhost (127.0.0.1) only. The webserver listens on port 8080 and the database on port 60000.

When the database first starts, it create a new home in /webroot/WEB-INF/db (Please do not commit this directory or its files). You can switch between Production and Test instances using the envrioment variable DLAPDB=prod or DLAPDB=test. HyperSQL offers a couple of management tools if you want to "see" the database. The GUI can be run with:
```
java -cp hsqldb.jar org.hsqldb.util.DatabaseManagerSwing
```
and the CLI can be run using:
```
java -jar sqltool.jar
```
Note: Please see the resources/app.properties for connection information.

## Foundation

### Actions/Controllers
See dlap.stripes.actions

### Static pages
/webroot

### Dynamic Pages
/webroot/WEB-INF/jsp

### Java Beans & Data Model
dlap.model

### Settings
src/main/java/resources/app.properties

## Development
Note: Very high level. More detail to be added as needed.

### New CRUD
* Create a dlap.model class
* Create a dlap.stripes.action class
* Create a /webroot/WEB-INF/jsp page
* Add the page to dlap.common.ResourceUrls


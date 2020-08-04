# KitabGhar
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/jaykay12/KitabGhar/blob/master/LICENSE)

## An online eBook Portal build on J2EE Platform using Java Servlets and JSP.

## Technolgies Used:
 - J2EE: Java Servlets & JSP
 - MySQL Database
 - Bootstrap4 as UI Framework
 
## Building & Running the Project(Linux):
1. Clone the project using `git clone https://github.com/jaykay12/KitabGhar.git`
2. Install Tomcat7 on your workspace:
    `sudo apt-get install tomcat7 tomcat7-admin tomcat7-docs tomcat7-examples`
3. Hit `127.0.0.1:8080/` from your web browser, if Tomcat7 landing page loads, you are good to go.
4. Open repository using `cd KitabGhar`
5. Open MySQL in your workspace using `mysql -u [username] -p` & then create a DB for KitabGhar using `CREATE DATABASE kitabghar`
6. Populate the DB using MySQL dump file using `mysql -u [username] -p kitabghar < KitabGhar.sql`
7. Create a soft link of the web-app to the tomcat7 root folder using `cd /var/lib/tomcat7/webapps/` and `sudo ln -s <SYSTEM_PATH_GITHUB_REPO>/KitabGhar/KitabGhar KitabGhar`
8. Start Tomcat7 server using `sudo /etc/init.d/tomcat7 start`
9. Hit `127.0.0.1:8080/KitabGhar` from your web browser.
10. Explore the project, find bugs, raise issues & make pull requests. Happy Hacking :smile:

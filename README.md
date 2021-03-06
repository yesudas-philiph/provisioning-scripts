# Provisioning-scripts
## Some useful ec2-userdata
![GitHub last commit](https://img.shields.io/github/last-commit/yesudas-philiph/provisioning-scripts) ![GitHub top language](https://img.shields.io/github/languages/top/yesudas-philiph/provisioning-scripts) ![GitHub language count](https://img.shields.io/github/languages/count/yesudas-philiph/provisioning-scripts)


What is Amazon ec2 user-data ?

When you launch an instance in Amazon EC2, you have the option of passing user data to the instance that can be used to perform common automated configuration tasks and even run scripts after the instance starts. You can pass two types of user data to Amazon EC2: shell scripts and cloud-init directives.

For more information visit [Amazon ec2 user-data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html) 

## Some common settings used in above scripts

>LC_ALL: Overrides all other locale variables (except LANGUAGE)

>LANG : This environment variable deals with the language of a Linux system. When we specify a language using the LANG variable, it’ll use that variable to print out messages in the language we choose. If no language is set, or if a message doesn’t have a translation in that language, then it defaults to English

>locale : command for displaying the current locale settings

>ClientAliveInterval: Sets a timeout interval in seconds after which if no data has been received from the client, sshd will send a message through the encrypted channel to request a response from the client. The default is 0, indicating that these messages will not be sent to the client.



## Other scripts

docker.sh : installs docker and docker-compose


terraform.sh : installs terraform


basic-userdata : includes codes to help the instance to keep the history, append history after each sessions




wordpress setup:\
db: installs and starts up mariadb, create dtabase named wp, user wp with password wp and grant all priviles to user wp over database wp

webserver: download and copy wordpress files to webroot of the apache webserver and add details such as database name, database user name and password for database user. Instead of db server ip I've added db.internal, you can create private hosted zone in route 53 and add db server ip there as a 'A' record.

# minimtx

minimtx is the name for this docker-compose project that contains working revisions of awx and gitea. minimtx is primary
made for testing/learning purposes only.
 

PREREQUISITES
---
For running minimtx you need the following software components on your host system

Name           | Reference    
-------------- | --------------- 
docker         | [https://docs.docker.com/engine/reference/run/](https://docs.docker.com/engine/reference/run/)
docker-compose | [https://docs.docker.com/compose/reference/overview/](https://docs.docker.com/compose/reference/overview/)       


Installation
---
minimtx is based on docker-compose. The following brief description shows how you can run minimtx:

        $ cd ~
        $ git clone https://github.com/prosmc/minimtx.git
        $ cd minimtx
        $ git checkout master
        $ source ./.xrc
        $ x_setup

Show all commands
---
You can list the commands which are provided by minimtx with ...

        $ x_cmd

After a successfull installation awx and gitea are availabe under the following URLs:

        AWX - http://localhost/

You can log in with the following credentials

User: admin <br>
Password: password <br>

Contributing
---
If you find some bugs or have any requests/suggestions don't hesitate to open an issue or make a pull request.

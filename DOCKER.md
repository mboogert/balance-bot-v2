# Run
To start Balance Bot v2 using the pre build docker image use the following command.
```
$ mkdir config
$ balance-bot-v2 git:(master) docker run --rm --detach --publish 3000:3000 --volume `pwd`/config:/var/opt/balance-bot-v2/config --name balance-bot-v2 mboogert/balance-bot-v2
```
This starts the Balance Bot v2 container and exposes port 3000 to the host.
The configuration is saved in the `config` directory, adding persistency to the application.

# Build
To build a balance-bot-v2 docker image yourself, you can use the following command.
Make sure the clone the repository first using the `git clone` command
```
$ git clone git@github.com:mboogert/balance-bot-v2.git 
$ docker build -t balance-bot-v2 .
```

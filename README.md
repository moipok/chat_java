## Tech

- Java
- PostgreSQL

## Installation

Dillinger requires [Java](https://www.java.com/ru/) v8+ to run.

Install bd.

```sh
brew install postgres
psql --user postgres
CREATE ROLE root WITH PASSWORD 'root' LOGIN SUPERUSER;
CREATE DATABASE epamdatabase WITH OWNER root;
GRANT ALL PRIVILEGES ON DATABASE chat TO root;
```
and exec in epamdatabase

src/main/resources/schema.sql

Or change db properties in src/main/resources/db.properties 

## Development

For compile project

```sh
cd chat/
mvn package
java -jar target/akuginov_epam.jar 
```


## Magic

# Chapter I

Server:
```
$ java -jar target/socket-server.jar --port=8081
```

Client is also a separate project:
```
$ java -jar target/socket-client.jar --server-port=8081
```


```
Hello from Server!
> signUp
Enter username:
> Marsel
Enter password:
> qwerty007
Successful!
```



- Char
    - SocketServer
        - src
            - main
                - java
                    - edu.school21.sockets
                        - server
                            -	Server
                        - models
                            -	User
                        - services
                            - UsersService
                            - UsersServiceImpl
                        - repositories
                            - CrudRepository
                            - UsersRepository
                            - UsersRepositoryImpl
                        - app
                            - Main
                        - config
                            - SocketsApplicationConfig
                - resources
                    - db.properties
        - pom.xml

# Chapter II
### Messaging

Messaging ||
---|---
Files to turn-in |	chat

Once you have implemented the application backbone, you should provide multi-user message exchange.

You need to modify the application so that it supports the following chat user life cycle:
1. Registration
2. Sign in (if no user is detected, close a connection)
3. Sending messages (each user connected to the server must receive a message)
4. Logout

Example of the application operation on the client side:
```
Hello from Server!
> signIn
Enter username:
> Marsel
Enter password:
> qwerty007
Start messaging
> Hello!
Marsel: Hello!
NotMarsel: Bye!
> Exit
You have left the chat.
```
Each message shall be saved in the database and contain the following information:
- Sender
- Message text
- Sending time


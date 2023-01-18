# Docker-code

1. Create AmazonLinux instance
2. Download tomcat -wget .zip
3. Install unzip
4. Extract Zip - unzip
5. Change permissions bin folder - execute
6. Install jdk 11
7. Start tomcat service

-- Change the location to where the docker file and artifact file is located.

docker build -t [Hubname]/[Imagename]:version . [dot refers the present working directory]

docker build -t sanjaybaskar/webapp:0.1 .

-- To see the images list

docker images

-- To run the images as container

docker run --name [ContainerName] -d -p 8080:8080 [Hubname]/[Imagename]:version

docker run --name samplecontainer -d -p 8080:8080 sanjaybaskar/webapp:0.1

-- To see the container's list

docker ps -a

-- To see the log data of a container

docker logs [container id]

-- To know more details about the cotainer 

docker inspect [container id]

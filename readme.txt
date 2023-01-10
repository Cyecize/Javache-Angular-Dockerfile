fe - angular root directory
be - javache root directory
conf - not used by this script, but you can keep files such as .env here
assets - any files / folders that you would otherwise put in the assets folder, but those 
will override existing files


Example build commands:
docker build -t myapp:1.0 .
docker run --name my-container -p 8083:8000 --network my_network -e 'KEY=val' -v /home/local/my-folder:/application/target/javache_assets myapp:1.0

/application/target/javache_assets - this is the path to the assets folder in the container. If you want to have persistent storage, add this argument.


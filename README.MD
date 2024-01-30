# MAC VALGRIND INSTALLATION USING DOCKER

## 1. Install docker by following the official documentation
https://docs.docker.com/desktop/install/mac-install/

From here on you can either follow the instructions or use the install_*.sh, depending on your preferences.

If you would like to use the script, first change the permissions like this:
~~~ sh
sudo chmod +x install_*.sh
~~~

The * depends on the shell that your using.

## 2. Create a directory for the script
~~~ sh
sudo mkdir ~/.local/bin
~~~

<!-- ## 2. Create a Dockerfile somewhere on the computer
Paste this into the file.
~~~ Dockerfile
FROM alpine:latest
RUN apk add gcc valgrind
RUN apk add musl-dev
~~~ -->

## 2. Create the docker image
Run the following command in the directory where you have the Dockerfile
~~~ sh
docker build -t "valgrind:1.0" .
~~~

## 3. Create the running script
Call the script run_valgrind.sh
~~~ sh
#!/bin/sh

docker run -it -v $PWD:/tmp -w /tmp valgrind:1.0
~~~

## 4. Move it under <i>~/.local/bin</i>
~~~ sh
mv run_valgrind.sh ~./local/bin
~~~

## 5. Add alias
Depending on which shell you're using.<br>
<b>ZSH</b>
~~~ sh
echo "alias run_valgrind='~/.local/bin/run_valgrind.sh'" >> ~/.zshrc
~~~
<b>BASHRC</b>
~~~ sh
echo "alias run_valgrind='~/.local/bin/run_valgrind.sh'" >> ~/.bashrc
~~~

## 6. Restart or source the terminal window

~~~sh
source ~/.zshrc
~~~
or
~~~sh
source ~/.bashrc
~~~

## 7. Enjoy using run_valgrind
#### Author: [Kuba2901](https://www.github.com/Kuba2901)
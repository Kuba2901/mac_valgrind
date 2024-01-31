# MAC VALGRIND INSTALLATION USING DOCKER

## 1. Install docker by following the official documentation
https://docs.docker.com/desktop/install/mac-install/

From here on you can either follow the instructions or use the install_*.sh, depending on your preferences.

If you would like to use the script, first change the permissions like this:<br>
<b>ZSH</b>
~~~ sh
sudo chmod +x install_zsh.sh
~~~
<b>BASHRC</b>
~~~ sh
sudo chmod +x install_bash.sh
~~~

## 2. Create a directory for the script
~~~ sh
sudo mkdir -p ~/.local/bin
~~~

## 2. Create the docker image
Run the following command in the directory where you have the Dockerfile
~~~ sh
docker build -t "valgrind:1.0" .
~~~

## 3. Change permissions and copy the run_valgrind script under <i>~/.local/bin</i>
~~~ sh
sudo chmod +x run_valgrind.sh
sudo cp run_valgrind.sh ~/.local/bin
~~~

## 4. Add alias to the path
Depending on which shell you're using.<br>
<b>ZSH</b>
~~~ sh
echo "alias run_valgrind='~/.local/bin/run_valgrind.sh'" >> ~/.zshrc
~~~
<b>BASHRC</b>
~~~ sh
echo "alias run_valgrind='~/.local/bin/run_valgrind.sh'" >> ~/.bashrc
~~~

## 5. Restart or source the terminal window

~~~ sh
source ~/.zshrc
~~~
or
~~~ sh
source ~/.bashrc
~~~

## 6. Enjoy using run_valgrind
Whenever you need to use valgrind, just navigate to the program directory and run <i>run_valgrind</i>.
#### Author: [Kuba2901](https://www.github.com/Kuba2901)
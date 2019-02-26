# JG Dev Env - A Portable Development Environment

I typically work in an environment that has no internet connection, limited permissions and old versions of development tools available through the OS repositories.  This project is a way for me to build the latest version of the tools I want to use for the target OS, centos-7 for the moment.

## Usage

Run the following:

git clone https://github.com/JasonGilholme/jg_dev_env.git
cd jg_dev_env
./install

This will do the following:

* Build a centos-7 based docker image to use as a build environment with the supporting libs required
* Build all the software 
* Install build artifacts into ~/jg_dev_env by default, you can pass an install directory to ./install if you like.
* Adds 2 lines to your bashrc, and makes a few symlinks in your home dir

Once that's done you should be able to start up your terminal (or use kitty from this tool set) and start using the tools.

To ensure it's working, `which git` should return a path from ~/jg_dev_env/.

## Software

The following tools are in the package

*Terminals*
kitty - GPU rendered terminal

*Editors*
NeoVim

*Languages*
Python (multiple version via PyEnv)
Golang
Rust

*Utilities*
ag
cmake
fd
fzf
git
highlight
htop
screen
tmux
tree

# Testing

The `./test` script will start a vanilla centos:7 docker image with the installed tools mounted at /jg_dev_env.  This is a good way to determine if new tools will work in a bare bone. 

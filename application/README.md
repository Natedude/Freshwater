# Application Folder

## Purpose
The purpose of this folder is to store all the source code and related files for your team's application. Source code MUST NOT be in any of folder. <strong>YOU HAVE BEEN WARNED</strong>

You are free to organize the contents of the folder as you see fit. But remember your team is graded on how you use Git. This does include the structure of your application. Points will be deducted from poorly structured application folders.

## Please use the rest of the README.md to store important information for your team's application.


# Our Website

* [Fresh Water, were the gators live](http://www.freshwater.city)

------------------------------------------------------------

## Built With

* [VueJS](https://vuejs.org) - Used to make our website reactive
* [BootstrapVue](https://bootstrap-vue.org) - Used for the templating for our site
* [Flask](https://flask.palletsprojects.com/en/1.1.x/) - Used to serve as REST API server
* [Gunicorn](https://gunicorn.org) - Used to handle our HTTP server
* [NGINX](https://nginx.org/en/) - Used to handle our HTTP proxy server

------------------------------------------------------------

# Deploy on your computer

## Clone the repository
```
git clone https://github.com/CSC-648-SFSU/csc648-su20-team01.git
```

## Installation
Install anaconda 3 in your system
https://www.anaconda.com/products/individual

Then create new environment

```
conda env create -f sfsc.yml
```

Activate the environment
```
conda activate sfsc
```
---------------------------------------
## Deployment

```
gunicorn --bind 0.0.0.0:5000 wsgi:app
```

---------------------------------------

## Contributors

* [Luis Chumpitaz](https://github.com/luisdiaz1997) - Team Lead
* [Garret](https://github.com/enigmatized) - Database & Backend
* [Nathan Hildum](https://github.com/Natedude) - Backend, Discord Manager, & Documentation Editor
* [Zachary](https://github.com/Area-Turtle) - Backend and SQL
* [Gouri Jamakhandi](https://github.com/gourijamakhandi) - Front End Developer
* [Xinwei Fan](https://github.com/IvyFan19) - Front End Developer
* [Katthak Shah](https://github.com/KatthakS) - Full Stack Developer & Github Master

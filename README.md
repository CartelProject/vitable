# VITable-CLI

> A CLI that shows classes right in Terminal for you. Written in Nim.

[![DOCS](https://img.shields.io/badge/Documentation-see%20docs-green?style=flat-square&logo=appveyor)](https://vit-timetableapi.herokuapp.com/docs) 

## Screenshot
![VITable](/assets/vitable.png)

## Features
- Shows all classes
- Shows ongoing classes
- Shows classes today

## Instructions to install

You will need to install [Nim](https://nim-lang.org) on your host PC in order to run VITable.

#### Linux
Debian based operating systems - 
```
sudo apt install nim -y
```

And on Arch Linux - 
```
sudo pacman -S nim
```

After installing Nim, run the following.

```
$ git clone "https://github.com/CartelProject/VITable-CLI"
$ touch timetable.txt
$ cd VITable-CLI
$ make build
```

Now, to make it visible throughout system

```
$ sudo cp src/vitable /usr/bin
$ vitable -h 
```

Congratulations, VITable should be up and running now!

## Contributors
- <a href="https://github.com/VisheshBansal">Vishesh Bansal</a>
- <a href="https://github.com/gaganmalvi">Gagan Malvi</a>

## License
[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

<p align="center">
	Made with :heart: by <a href="https://github.com/CartelProject" target="_blank">The Cartel Family</a>
</p>

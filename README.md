# VITable-CLI

> A CLI that shows classes right in Terminal for you. Written in Nim.

[![DOCS](https://img.shields.io/badge/Documentation-see%20docs-green?style=flat-square&logo=appveyor)](https://vit-timetableapi.herokuapp.com/docs)

## Caution!

- This does NOT work for 2021-2025 batch students!
- They have a different course structure. If you're a '25 batch student, please contact one of the maintainers and get your courses added.

## Screenshot

![VITable](/assets/vitable.png)

## Features

- Shows all classes
- Shows ongoing classes
- Shows classes today

## Instructions to install (Unix Based Systems)

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

```sh
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

NOTE: On Arch Linux, vitable can be installed using the AUR!

## Instructions to install (Windows).

## Dependencies

- [Chocolatey](https://chocolatey.org/install)
- [Nim](https://nim-lang.org)
- [Git](https://git-scm.com/download/win)

**These steps are for installing in the D drive**

_Note Please, copy the contents of your timetable from VTOP -> Academics -> Time Table to timetable.txt_

```psh
D:\> mkdir Tools
D:\> cd Tools
D:\> git clone "https://github.com/CartelProject/VITable-CLI"
D:\> type nul >> C:\Users\%username%\timetable.txt
D:\> cd VITable-CLI
D:\> make build
D:\> set PATH=%PATH%;"D:\Tools\VITable-CLI\src"
D:\> vitable -h
```

Congratulations, VITable should be up and running now!

## Contributors

- <a href="https://github.com/VisheshBansal">Vishesh Bansal</a>
- <a href="https://github.com/gaganmalvi">Gagan Malvi</a>
- <a href="https://github.com/saintwithataint">Rishabh Agrawal</a>

## License

[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

<p align="center">
	Made with :heart: by <a href="https://github.com/CartelProject" target="_blank">The Cartel Family</a>
</p>

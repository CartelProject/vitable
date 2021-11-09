# VITable-CLI

> A CLI that shows classes right in Terminal for you. Written in Nim.

[![DOCS](https://img.shields.io/badge/Documentation-see%20docs-green?style=flat-square&logo=appveyor)](https://vit-timetableapi.herokuapp.com/docs)

## Caution

<<<<<<< HEAD

- This does NOT work for 2021-2025 batch students!
- They have a different course structure. If you're a '25 batch student, please contact one of the maintainers and get your courses added.
=======
- The working of this for 2021-2025 batch students has NOT been extensively tested. Reporting any buys is appreciated.
- If you're a '25 batch student and don't see your course, please contact one of the maintainers and get your courses added.

>>>>>>> 50d142dbbf86bf3f20edd332554985aaa3d81d5b

## Screenshot

![VITable](/assets/vitable.png)

## Features

- Shows all classes
- Shows ongoing classes
- Shows next class
- Shows classes today

## Instructions to install (Unix Based Systems)

You will need to install [Nim](https://nim-lang.org) on your host PC in order to run VITable.

### Linux

Debian based operating systems -

```sh
sudo apt install nim -y
```

And on Arch Linux -

```sh
sudo pacman -S nim
```

After installing Nim, run the following.

```sh
git clone "https://github.com/CartelProject/VITable-CLI"
touch timetable.txt
cd VITable-CLI
make build
```

Now, to make it visible throughout system

```sh
sudo cp src/vitable /usr/bin
vitable -h
```

NOTE: On Arch Linux, vitable can be installed using the AUR!

## Instructions to install (Windows)

## Dependencies

- [Chocolatey](https://chocolatey.org/install)
- [Nim](https://nim-lang.org)
- [Git](https://git-scm.com/download/win)

### These steps are for installing in the D drive

Note Please, copy the contents of your timetable from VTOP -> Academics -> Time Table to timetable.

### Run the next steps in an elevated command shell

```psh
C:\WINDOWS\system32> choco install make
```

### Restart Terminal (Not necessarily elevated)

```psh
D:\> mkdir Tools
D:\Tools> cd Tools
D:\Tools> git clone "https://github.com/CartelProject/VITable-CLI"
D:\Tools> type nul >> C:\Users\%username%\timetable.txt
D:\Tools> cd VITable-CLI
D:\Tools\VITable-CLI> make build
D:\Tools\VITable-CLI> set PATH=%PATH%;"D:\Tools\VITable-CLI\src"
D:\Tools\VITable-CLI> vitable -h
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

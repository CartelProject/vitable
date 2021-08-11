# VITable-CLI

> A CLI that shows classes right in Terminal for you. Written in Nim.

---
[![DOCS](https://img.shields.io/badge/Documentation-see%20docs-green?style=flat-square&logo=appveyor)](https://vit-timetableapi.herokuapp.com/docs) 

## Features
- Shows all classes
- Shows ongoing classes
- Shows classes today

## Instructions to run

```
$ git clone "https://github.com/CartelProject/VITable-CLI"
$ touch .vitable.json timetable.txt
$ cd VITable-CLI
$ nimble build
$ ./vitable -h
```
#### Issues
>In case you face an issue `
>Error: unhandled exception: SSL support is not available. Cannot connect over SSL. Compile with -d:ssl to enable. [HttpRequestError]` 
>add `-d:ssl` to your `nim.cfg` file
## Contributors
- <a href="https://github.com/VisheshBansal">Vishesh Bansal</a>
- <a href="https://github.com/gaganmalvi">Gagan Malvi</a>

## License
[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

<p align="center">
	Made with :heart: by <a href="https://github.com/CartelProject" target="_blank">The Cartel Family</a>
</p>
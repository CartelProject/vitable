import os, json, times, strutils, docopt

assert getHomeDir() == expandTilde("~")
var path = getHomeDir()
path.add(".vitable.json")
let jsonNode = parseFile(path)
var tt = jsonNode["Slots"]

let p10kfunc = """
function prompt_vitable() {
        ttrem=$(vitable remaining)
        p10k segment -b yellow -f black -t "$ttrem"
}
"""

let doc = """
VITable 1.0.0

View your timetable right in your terminal!

Created with ❤️  by the Cartel Family.

Developers:
    Gagan Malvi (https://github.com/gaganmalvi)
    Vishesh Bansal (https://github.com/VisheshBansal)

USAGE:
    vitable (s | show)
    vitable (r | remaining)
    vitable p10k
    vitable (-h | --help)
    vitable (-v | --version)

OPTIONS:
    -h, --help          Show this screen.
    -v, --version       Show the version.
"""

let daynow = now()
var daytoday = toUpperAscii(daynow.format("ddd"))

proc showTT() = 
    echo "Timetable for today."
    for i in tt:
        if getStr(i["Day"]) == daytoday:
            var
                course = i["Course_Name"]
                slot = i["Slot"]
                intime = i["StartTime"]
                outtime = i["EndTime"]
            echo ""
            echo "Course: ", getStr(course)
            echo "Timings: ", getStr(intime), " - ", getStr(outtime)
            echo "Slot: ", getStr(slot)

proc p10kInstall() = 
    echo "VITable Powerlevel10k plugin.\n"
    echo "In ~/.p10k.zsh, add the following function.\n"
    echo p10kfunc
    echo ""
    echo "Now, add the definition vitable to LEFT or RIGHT arguments, whatever you prefer.\n"
    echo "Source .zshrc, or restart your terminal."

proc classesOngoing() =  
    if daytoday == "SAT" or daytoday == "SUN":
        echo "No classes today!"
    else:
        for f in tt:
            if getStr(f["Day"]) == daytoday:
                var timenow = daynow.format("HH:mm")
                var intime = getStr(f["StartTime"])
                var outtime = getStr(f["EndTime"])
                if timenow > intime and timenow < outtime:
                    echo "Ongoing: ", getStr(f["Course_Name"])
                    break
                else:
                    echo "No ongoing class!"
                    break

let args = docopt(doc, version = "1.0.0")

if args["show"] or args["s"]:
    showTT()

if args["p10k"]:
    p10kInstall()

if args["remaining"] or args["r"]:
    classesOngoing()

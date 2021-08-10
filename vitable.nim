import os, json, times, strutils, parseopt

assert getHomeDir() == expandTilde("~")
var path = getHomeDir()
path.add(".vitable.json")
let jsonNode = parseFile(path)
var tt = jsonNode["Slots"]

let daynow = now()
var daytoday = toUpperAscii(daynow.format("ddd"))

proc showTT() = 
    for i in tt:
        if getStr(i["Day"]) == daytoday:
            var
                course = i["Course_Name"]
                slot = i["Slot"]
                intime = i["StartTime"]
                outtime = i["EndTime"]
            echo ""
            echo "Course: " & getStr(course)
            echo "Timings: " & getStr(intime) & " - " & getStr(outtime)
            echo "Slot: " & getStr(slot)

showTT()

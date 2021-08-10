import os, json, times, strutils, parseopt

assert getHomeDir() == expandTilde("~")
var path = getHomeDir()
path.add(".tt.json")
let jsonNode = parseFile(path)
var tt = jsonNode["timeTable"]

let daynow = now()
var daytoday = toUpperAscii(daynow.format("ddd"))

proc showTT() = 
    for i in tt[daytoday]:
        var
            course = i["course"]
            slot = i["slot"]
            intime = i["inTime"]
            outtime = i["outTime"]
        echo ""
        echo "Course: " & getStr(course)
        echo "Timings: " & getStr(intime) & " - " & getStr(outtime)
        echo "Slot: " & getStr(slot)


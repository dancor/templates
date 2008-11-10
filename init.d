#!/usr/bin/env python
import ProcessManager as PM

# FIXME: good place?
PM.init(dataDir="/var/state")

PM.add(PM.Process(
    name = "lolbunny",
    desc = "programmable web bookmark service",
    # FIXME: how to adjust path at install?
    program = "/usr/bin/lolbunny.py",
    args = [],
    # should run anywhere..
    workingDir = "/",
    uid = "root",
    gid = "root",
))

PM.rcScriptMain()

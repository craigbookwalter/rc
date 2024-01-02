#!/usr/bin/env python3

import sys
import subprocess


SN_URL="https://chenmed.service-now.com/task.do?sysparm_query=number={}"

if len(sys.argv) < 2:
    print("need to pass ticket number")
    sys.exit(1)

print("Hi there")

ticket = sys.argv[1]

url = SN_URL.format(ticket)

subprocess.run(['open', url])

#!/usr/bin/env python3

import random
import sys
import subprocess

def decorate(s):
    DECORATIONS = "☠️✨ 🦥🌈🔥🌪⚡️"
    d = random.choice(DECORATIONS)
    return d + s + d

JOIN_URL="https://meetings.ringcentral.com/join?jid={}&uname={}"

if len(sys.argv) < 2:
    print("need to pass join ID")
    sys.exit(1)

join_id = sys.argv[1]

url = JOIN_URL.format(join_id, decorate("Craig"))

print("Join URL:", url)

subprocess.run(['open', url])

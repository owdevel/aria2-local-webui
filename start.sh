#!/bin/sh

SESSION=./aria2.session
LOG=./aria2.log

if [ ! -f "$SESSION" ]; then
	touch "$SESSION"
fi

if [ ! -f "$LOG" ]; then
	touch "$LOG"
fi

xdg-open ./site/index.html

aria2c --conf-path=./aria.conf

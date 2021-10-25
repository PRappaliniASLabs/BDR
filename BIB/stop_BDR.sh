#!/bin/bash

ps -A | grep Tier | awk '{print $1}' | xargs kill -9 2> /dev/null


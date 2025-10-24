#!/bin/bash

sketchybar  --add event is_unlock "com.apple.screenIsUnlocked" \
            --add event IME_change "AppleSelectedInputSourcesChangedNotification" \
            --add event aerospace_workspace_change
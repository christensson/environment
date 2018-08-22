#!/bin/bash

DEV_DIR=$HOME/dev
BUILD_DIR=$HOME/build

tmux new-session -d -n "trackercore" -c "$DEV_DIR/trackercore" bash
tmux split-window -v -c "$BUILD_DIR/trackercore/native/default/Release/build" bash
tmux split-window -h -c "$DEV_DIR/trackercore" bash

tmux split-window -v -c "$BUILD_DIR/trackercore/native/default/Release/build" bash
tmux select-layout -t "trackercore" tiled

tmux new-window -n "analysis" -c "$HOME/tmp" bash
tmux split-window -v -c "$HOME" bash
#tmux split-window -v -c "$HOME" bash
tmux select-layout -t "analysis" even-horizontal

# Start at first window
tmux select-window -t 0

tmux -2 attach

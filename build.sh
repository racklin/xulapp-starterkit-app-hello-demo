#!/bin/bash

# Copyright (c) 2012 XULApp StarterKit racklin@gmail.com

CALLDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

DISTDIR="$CALLDIR/dist"

# Make sure DISTDIR exists
if [ ! -d "$DISTDIR" ]; then mkdir -p "$DISTDIR"; fi

echo "Build Main app "
cd "$CALLDIR/1_mainapp" && zip -rqX "$DISTDIR/mainapp.xpi" *

echo "Buildi addon "
cd "$CALLDIR/2_addon" && zip -rqX "$DISTDIR/addon.xpi" *

echo "Build bootstrap style "
cd "$CALLDIR/3_bootstrap_style" && zip -rqX "$DISTDIR/bootstrap_style.xpi" *

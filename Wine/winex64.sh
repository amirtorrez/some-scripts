#!/bin/bash

## Deleting Wine files in home folder
cd ~
rm -rf .wine
rm -f .config/menus/applications-merged/wine*
rm -rf .local/share/applications/wine
rm -f .local/share/desktop-directories/wine*
rm -f .local/share/icons/????_*.xpm 

## Exporting x32 prefix
WINEARCH=win32 WINEPREFIX=~/.wine winecfg

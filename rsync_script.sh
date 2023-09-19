#!/bin/bash
rsync -av --include='*.pdf' --include='*.epub' --exclude='*' ~/Downloads/ ~/Desktop/Library/


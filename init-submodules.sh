#!/bin/bash
# ===========================================================================
# SCRIPT: Initialize Git Submodules for Hugo Site
# ===========================================================================
# Purpose: This script initializes and updates all Git submodules used in
#          this repository. Hugo themes and other dependencies are often 
#          included as Git submodules.
# ===========================================================================

# Initialize the submodule configuration from .gitmodules
# This registers submodules in .git/config but doesn't fetch content yet
echo "Initializing submodule configuration..."
git submodule init

# Update all submodules by fetching their contents
# --recursive: Also initialize and update nested submodules
# --init: Initialize any submodules that haven't been initialized yet
echo "Fetching submodule content (this may take a while)..."
git submodule update --recursive --init

# Check if the update was successful
if [ $? -eq 0 ]; then
    echo "✅ Submodules successfully initialized and updated"
    echo "   Your Hugo site is now ready for development"
else
    echo "❌ Error initializing submodules. Please check error messages above."
    exit 1
fi

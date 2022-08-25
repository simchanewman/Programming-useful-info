#!/usr/bin/env bash

#Read the user input

git add .
echo "Add a note for this commit: "
read commit_note
git commit -m "$commit_note"
git push origin -u Main
echo "Finished"
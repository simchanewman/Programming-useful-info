#!/usr/bin/env bash

#Read the user input

git_confirm () {
    echo "Do you want to proceed to a push to Main? [Y, N]"
    read commit_confirmation
    if [[ $commit_confirmation -eq "Y" ]]
    then
        git push origin -u Main
        echo "Finished with the push"
    elif [[ $commit_confirmation -eq "N" ]]
    then
        echo "Push cancelled"
        exit
    else
        echo "Only the letter 'Y' or 'N' are accepted as parameters"
        git_confirm
    fi
}

git add .
echo "Add a note for this commit: "
read commit_note
git commit -m "$commit_note"
git_confirm

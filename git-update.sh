#!/usr/bin/env bash

#Read the user input
count=0

# Function: Will check if the user has tried less or more than three times to make a commit and push
# If statement: Contains the logic for the check and then will proceed with the outcome accordingly
git_check() {
    if [[ $count -lt 3 ]] ; then
        git_confirm
    else
        echo "Thre have been to many attempts with the wrong input"
        echo "Exiting"
        exit
    fi
}

# Function: Will recurse if the user enters input that isn't Y or N
# If statement: Checks the input based of the users input and then procceeds accordingly
git_confirm () {
    echo "Do you want to proceed to a push to Main? [Y, N]"
    read commit_confirmation
    if [[ $commit_confirmation == "Y" ]]
    then
        git push origin -u Main
        echo "Finished with the push"
    elif [[ $commit_confirmation == "N" ]]
    then
        echo "Push cancelled"
        exit
    else
        echo "Only the letter 'Y' or 'N' are accepted as parameters"
        count=$((count + 1))
        git_check
    fi
}

# Git add command
git add .

#Requests input form user for the commit note
echo "Add a note for this commit: "
read commit_note

# Git commit command with the commit note
git commit -m "$commit_note"

# Start the check and push process
git_check
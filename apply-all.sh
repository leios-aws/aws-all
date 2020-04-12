#!/bin/sh

for AWS in aws-*
do
        if [ ! -d $AWS ]
        then
                continue
        fi

        if [ ! -d $AWS/nodejs ]
        then
                continue
        fi

        cd $AWS

        CUR_URL=`git config --get remote.origin.url`
        CUR_BRANCH=`git rev-parse --abbrev-ref HEAD`

        echo "============================================="
        echo "$AWS"
        echo "[$CUR_BRANCH] [$CUR_URL]"

        git checkout develop
        git status


        #NEW_URL=`git config --get remote.origin.url | sed -r 's/leios76/leios-aws/g'`
        #git remote set-url origin ${NEW_URL}

        #git checkout master
        #git pull --rebase

        #git checkout develop
        #git pull --rebase

        #git push --all

        cd ..
done
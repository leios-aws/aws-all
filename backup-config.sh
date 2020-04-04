#!/bin/sh

rm -Rf configs

cp -Ra ~/.aws configs/
for AWS in aws-*
do
        if [ ! -d $AWS ]
        then
                continue
        fi

        if [ ! -d $AWS/nodejs/config ]
        then
                continue
        fi

        mkdir -p configs/$AWS/nodejs
        cp -Rav $AWS/nodejs/config configs/$AWS/nodejs/
done

rm -f aws-configs.zip
zip -r aws-configs.zip configs
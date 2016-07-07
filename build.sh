#!/bin/bash

cp -R /letslambda /build
cd /build
virtualenv .env
source .env/bin/activate
pip install -r requirements.txt
mv .env/lib/python2.7/site-packages/* . || :
mv .env/lib64/python2.7/site-packages/* . || :
mv .env/src/acme/acme/acme* . || :
rm -rf .env .git
zip -r letslambda.zip .
cp letslambda.zip /letslambda

#! /bin/zsh

pip3 install virtualenv
virtualenv env1
source ./env1/bin/activate
pip3 install --upgrade jupyter matplotlib numpy pandas scipy sckit-learn


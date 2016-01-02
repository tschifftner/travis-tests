#!/usr/bin/env bash
EXPECTED_VERSION='2.0.0'

if [ $(`which ansible` --version| `which cut` -d ' ' -f2) == $EXPECTED_VERSION ]; then
    echo 'same version'
    exit 0
fi
echo 'sorry'
exit 1


#if $(ansible --version| cut -d ' ' -f2) == '2.0.0'; then return 0; else return 1; fi
#
#ANSIBLE_VERSION=$(`which ansible` --version| `which cut` -d ' ' -f2)
#
#if [ $EXPECTED_VERSION != $ANSIBLE_VERSION ]; then
#    exit 1;
#fi
#exit 0;

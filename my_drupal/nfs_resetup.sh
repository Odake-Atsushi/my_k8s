#!/bin/bash

rm -rf /mnt/storage/drupal/data/*
rm -rf /mnt/storage/drupal/db/*

cd /mnt/storage/drupal/data

mkdir modules profiles sites themes
mkdir -p sites/default/files

chmod a+w modules/
chmod a+w profiles/
chmod a+w themes/

chmod a+w sites/
chmod a+w sites/default/
chmod a+w sites/default/files/
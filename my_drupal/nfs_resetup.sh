#!/bin/bash

cd /mnt/storage/drupal/data

# rm -rf /mnt/storage/drupal/data/*

mkdir modules profiles sites themes
mkdir -p sites/default/files

chmod a+w sites/
chmod a+w sites/default/
chmod a+w sites/default/files/
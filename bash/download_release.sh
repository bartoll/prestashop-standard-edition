#!/bin/bash

set -x

echo "Hello World!"

presta_version="1.7.8.2";
download_link="https://github.com/PrestaShop/PrestaShop/releases/download/${presta_version}/prestashop_${presta_version}.zip"
cur_dir=$(pwd)

# Download and unzip Prestashop
temp_file=$(mktemp)
temp_dir=$(mktemp -d)
curl -L -o $temp_file $download_link
unzip -q -d $temp_dir $temp_file
rm $temp_file

# Go to temp folder
cd ${temp_dir}

# Remove unnecessary files
rm -rf "prestashop_${presta_version}.zip" Install_PrestaShop.html index.php

# Remove composer.lock from archive
zip -d prestashop.zip composer.lock

# Extract Prestashop archive
unzip -d "${cur_dir}" -o -q prestashop.zip
rm prestashop.zip


cd "${cur_dir}"
rm -rf ${temp_dir}

# Say success
echo "Finished!"


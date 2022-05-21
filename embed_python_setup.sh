#!/usr/bin/sh

# linux_setup.sh <PYTHON_VERSION>

# default 3.9.9
VERSION=${1:-3.9.9}

# Download
curl https://www.python.org/ftp/python/$VERSION/python-$VERSION-embed-amd64.zip -o python.zip
unzip -d python python.zip
rm -rf python.zip

# Get pip
curl https://bootstrap.pypa.io/get-pip.py -o python/get-pip.py
sed -i "s/#import site/import site/g" python/*._pth
python/python.exe python/get-pip.py
rm -rf python/get-pip.py

echo -e "\nInstalled Python-$VERSION"
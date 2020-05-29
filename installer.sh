#!/usr/bin/env bash
echo "----------------------"
echo "Installing fontconfig..."
echo "----------------------"
apt install fontconfig
echo "----------------------"
echo "Downloading Fira Code fonts ..."
echo "----------------------"
for type in Bold Light Medium Regular Retina SemiBold; do
    file_path="/usr/share/fonts/FiraCode-${type}.otf"
    file_url="https://github.com/tonsky/FiraCode/blob/master/distr/otf/FiraCode-${type}.otf?raw=true"
    if [ ! -e "${file_path}" ]; then
        echo "Downloading FiraCode-${type}.otf"
        wget -qO "${file_path}" "${file_url}"
        echo "Finished downloading FiraCode-${type}.otf"
    else
        echo "FiraCode-${type}.otf is already existed."
    fi;
done
echo "----------------------"
echo "Installing Fira Code fonts..."
echo "----------------------"
echo "Running fc-cache -f ..."
echo "----------------------"
fc-cache -f
echo "Finished installing Fira Code fonts 🎉🎊🍾."

find .. -path '*/openbox-themes' -type d 
mkdir -p ../tmp/ob 
mkdir -p ../tmp/gtk
find .. -type f -path "*/openbox-themes" -execdir cp -rv "{}" ../tmp/ob \;
find .. -type f -path "*/share/themes" -execdir cp -rv "{}" ../tmp/gtk \;
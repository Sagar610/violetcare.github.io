 #!/bin/bash
 # SRC='$url = "/"'; 
 # DST='$url= "/"';
 # find . -type f -name "*.html" -exec sed -i 's,'"$SRC"','"$DST"',' {} \;

find . -type f -exec sed -i 's/http:\/\/localhost\//\//g' {} +

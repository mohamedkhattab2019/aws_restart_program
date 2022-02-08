#!/bin/bash
touch s2.sh
chmod +x s2.sh
echo "#!/bin/bash" >s2.sh
echo "echo \"$1\"" >>s2.sh
./s2.sh
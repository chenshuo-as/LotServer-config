
#!/bin/bash

tmp_initialCwndWan="75"
new_initialCwndWan="initialCwndWan=\"$tmp_initialCwndWan\""
tmp_l2wQLimit="1024 8192"
new_l2wQLimit="l2wQLimit=\"$tmp_l2wQLimit\""
tmp_w2lQLimit="1024 8192"
new_w2lQLimit="w2lQLimit=\"$tmp_w2lQLimit\""
tmp_smBurstMS="20"
new_smBurstMS="smBurstMS=\"$tmp_smBurstMS\""

sed -i "/^initialCwndWan/c$new_initialCwndWan" /appex/etc/config
sed -i "/^l2wQLimit/c$new_l2wQLimit" /appex/etc/config
sed -i "/^w2lQLimit/c$new_w2lQLimit" /appex/etc/config
sed -i "/^smBurstMS/c$new_smBurstMS" /appex/etc/config
exit

# Add two random dice number and print result.

#!/bin/bash

one_dice=`echo $((RANDOM%6))`; sec_dice=`echo $((RANDOM%6))`; echo $one_dice; echo $sec_dice; echo $((one_dice+sec_dice))
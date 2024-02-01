# https://twitter.com/calyptus_web3/status/1747879198314623010

#solution:
# i dont need the script, just send the cast->
#cast send --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY  0x74cd37dfcd91a4eb294213b370efc3fb03a45300 "updateSecretNumber(uint256)" <NEW_SECRET_NUMBER>

viz: https://book.getfoundry.sh/reference/cast/

#obecne:

cast send --rpc-url <SEPOLIA_RPC_URL> --private-key <YOUR_PRIVATE_KEY> <ADDRESS_OF_CALLED_CONTRACT> "<NAME_OF_THE FUNCTION_IAM_CALLING>(<PARAM>)" <VALUE_OF_THE_INSERTED_PARAMETER>

https://book.getfoundry.sh/reference/cast/cast-send

jak ziskat hodnotu zadaneho parametru - kouknout na Etherscan, nebo: cast storage
# cast storage $address 0 --rpc-url $api |  cast to-dec
SEPOLIA_RPC_URL=https://eth-sepolia.g.alchemy.com/v2/7ozqILVHIpF31Y8t7AZUnlDrRyAQ5_kb
ETHERSCAN_API_KEY=Q68UA8QIN3Y1RM6Z11BVD1DE4JZ85PDF4B
MY_ADDRESS=0xface73D17B7aD9895381B5941D553A73AC673B09
USERNAME=vojtech_stefan

challenge:
https://twitter.com/calyptus_web3/status/1750383077950378292

solution:
source .env
cast send --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY  0xa62290a428617f62dd65f26534c16b14df8149c3 "GREECE(string)" $USERNAME

responce:

blockHash               0x0fda5cab3faf173dccc98bb519bc754382e94f552a656541bb721c837c4b2281
blockNumber             5149539
contractAddress         
cumulativeGasUsed       1045198
effectiveGasPrice       61574454897
gasUsed                 44889
logs                    []
logsBloom               0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
root                    
status                  1
transactionHash         0x3b2fff15c56c6ff9f3418f55325cd8c64ae0d59623f51723dc572e94aaa74380
transactionIndex        28
type                    2

reseni echo $obecne:
cast send --rpc-url <SEPOLIA_RPC_URL> --private-key <YOUR_PRIVATE_KEY> <ADDRESS_OF_CALLED_CONTRACT> "<NAME_OF_THE FUNCTION_IAM_CALLING>(<PARAM>)" <VALUE_OF_THE_INSERTED_PARAMETER>
#https://book.getfoundry.sh/reference/cast/cast-send
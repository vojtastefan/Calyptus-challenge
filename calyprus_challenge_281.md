https://twitter.com/calyptus_web3/status/1752194934692610428

contract 0x7F06E18980B1c697422bE0b6831f18c73e27BD98 on sepolia testnet

viz "../src/Calyptus281.sol"

from constructor I can get gameEndTime = 0x0000000000000000000000000000000000000000000000000000000065ba6f10          =>                         gameEndTime = 1706716944 = block.timestamp(of deploynment) + 2 days
#with https://www.epochconverter.com/batch#results I can find:
1706716944 ~2024-01-31 16:02:24

#calling function in specific contract - obecne:

cast send --rpc-url <SEPOLIA_RPC_URL> --private-key <YOUR_PRIVATE_KEY> <ADDRESS_OF_CALLED_CONTRACT> "<NAME_OF_THE FUNCTION_IAM_CALLING>(<PARAM>)" <VALUE_OF_THE_INSERTED_PARAMETER>#

cast send --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY 0x7F06E18980B1c697422bE0b6831f18
c73e27BD98 "tryToSit(string memory)" $USERNAME

cast send --rpc-url <SEPOLIA_RPC_URL> --private-key <YOUR_PRIVATE_KEY> 0x7F06E18980B1c697422bE0b6831f18c73e27BD98 "tryToSit(string memory)" test_using_foundry_cast

SIDE NOTES:
# Get the full storage layout of the contract:
cast storage $CONTRACT_ADDRESS --rpc-url $SEPOLIA_RPC_URL

# Get the selector for a function.
cast sig "tryToSit(string memory)"

# Get the timestamp of the latest block:
cast age --rpc-url $SEPOLIA_RPC_URL

# Get the latest block:
cast block --rpc-url $SEPOLIA_RPC_URL

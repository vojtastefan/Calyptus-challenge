MY_ADDRESS=0xface73D17B7aD9895381B5941D553A73AC673B09
PRIVATE_KEY=870b5eabdcacea187c8f6f9ae0b2ed5f7c8d041143b5a467475a8e1475b4f74f
MESSAGE=0xe948598eb308a06cc2396d4b245ea910eb76b8209fce53f360efbcb752978c8d

# 1. derive new address and private key with specific prefix on 
       https://vanity-eth.tk/
              or
       cast wallet vanity --starts-with 0xface  
       cast wallet --help
            
# 2. in remix run
 bytes32 public  message;

  function print(address _addr) public  {
     message = keccak256(abi.encodePacked(_addr, "calyptus"));
       }

to get the message -> MESSAGE in .env
 (TODO - pujde udelat urcite jednoduseji)      

# 3 add generated account (0xface73D17B7aD9895381B5941D553A73AC673B09) to Metamask
# 4 compile the solidity callenge code at deployed address (0x2e285201e2bc6b5aa17c5829e6d80d5f6022d809)
# 5 SIGNATURE=$(cast wallet sign --private-key $PRIVATE_KEY $MESSAGE)
0x27dea3174cd402a7507b279c4f790c58156dbe74a3d561f8cfb7d17a0eb7338d6d5c37fc0d2d40f5e098922df48f8f874c7fe714934d833936c678971ce68af71b
# 6 in Remix on deployed contract run Participate function with $SIGNATURE as a parametr -> sign with Metamask
# 7 verify success by calling winners mapping   
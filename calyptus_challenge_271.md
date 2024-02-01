# calyptus challenge #271 / https://twitter.com/calyptus_web3/status/1748308578862002384

MESSAGE=-n "144_____vojta_stefan" | xxd -p ????

MESSAGE_HEX=$(cast --to-hex 144)  ... 0x90
HASHED_MESSAGE=$(cast keccak $MESSAGE_HEX) ...0x632315f5af09a9a7da25ae16c4f8560df2b48d94d524d354b69f35289c56e0ea

HASHED_MESSAGE=$(cast keccak 144_Vojta_Stefan)   0xc358977fd392fa57d54e9c5b0942ee988a1b68af09b44b2abfc6a9f9a3389279
HASHED_MESSAGE=${HASHED_MESSAGE:2}
SIGNATURE=$(cast wallet sign $HASHED_MESSAGE --private-key $PRIVATE_KEY) 
SIGNATURE=$(cast wallet sign --private-key $PRIVATE_KEY "144 Vojta_Stefan")

echo $SIGNATURE 

cast help

# cast wallet verify [options] --address address message signature
Verify the signature of a message.

cast wallet verify --address $MY_ADDRESS $HASHED_MESSAGE $SIGNATURE
# https://book.getfoundry.sh/reference/cast/cast-wallet-verify

cast wallet sign  $HASHED_MESSAGE  --private-key $PRIVATE_KEY

druhy pokus:
STRING="144_Vojta_Stefan"
BYTES=$(echo -n $STRING | xxd -p)       

HASHED_MESSAGE=$(cast keccak $BYTES)

3.POKUS>
MESSAGE=["144","vojtech_stefan"]
"SIGNATURE=$(cast wallet sign --private-key $PRIVATE_KEY $MESSAGE)"

FINAL>
SIGNATURE=$(cast wallet sign --private-key $PRIVATE_KEY "144 Vojta_Stefan")
cast wallet verify --address $MY_ADDRESS "144 Vojta_Stefan" $SIGNATURE





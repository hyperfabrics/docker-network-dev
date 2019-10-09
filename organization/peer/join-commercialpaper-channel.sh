
peer node status

export CHANNEL_TX_FILE=./commercialpaper-channel.tx

# Execute the channel create command
peer channel create -o $ORDERER_ADDRESS -c commercialpaperchannel -f $CHANNEL_TX_FILE

rm -f commercialpaperchannel_0.block
rm -f commercialpaperchannel.block

export COMMERCIALPAPER_CHANNEL_BLOCK_0=./commercialpaperchannel_0.block

# Fetch the genesis for the channel - this leads to creation of
# file airlinechannel_0.block
peer channel fetch 0  -o $ORDERER_ADDRESS -c commercialpaperchannel

#2 Join the channel
peer channel join -b $COMMERCIALPAPER_CHANNEL_BLOCK_0 -o $ORDERER_ADDRESS

./chain-test.sh install 


./chain-test.sh instantiate

# Created a SegWit address.
segwit_address=$(bitcoin-cli -regtest getnewaddress "" bech32)

# Add funds to the address.
transaction_id=$(bitcoin-cli -regtest sendtoaddress "$segwit_address" 0.01)
# Return only the Address
#cat $segwit_address

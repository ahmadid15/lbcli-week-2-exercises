# Created a SegWit address.
segwit_address=$(bitcoin-cli -regtest getnewaddress "" "bech32")

# Add funds to the address.
transaction_id=$(bitcoin-cli -regtest generatetoaddress 101 "$segwit_address")
# Return only the Address
cat $segwit_address

# Created a SegWit address.
segwit_address=$(bitcoin-cli getnewaddress "" bech32)

# Add funds to the address.
transaction_id=$(bitcoin-cli sendtoaddress "$segwit_address" 0.01)
# Return only the Address
cat $segwit_address
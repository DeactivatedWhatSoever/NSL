# Lets Build the Tiniest Blockchain

Here's the link that I studied this from: https://medium.com/crypto-currently/lets-build-the-tiniest-blockchain-e70965a248b

It was a real good read so I decided to copy and document the code myself to see if I understand the concept.

## Block class

Since it's a blockchain, we need to make a block first.

```python
import hashlib as hasher

class Block:
    def __init__(self, index, timestamp, data, previous_hash):
        """
        Initialize block

        :param index: the index of the block in the blockchain
        :param timestamp: the time when this block was generated
        :param data: data that is in this block
        :param previous_hash: the referene of the previous block of this block
        """
        self.index = index
        self.timestamp = timestamp
        self.data = data
        self.previous_hash = previous_hash
        self.hash = self.hash_block()



    def hash_block(self):
        """
        Create the hash reference of the block

        :returns: the hash reference
        """
        sha = hasher.sha256()
        sha.update(str(self.index) +
                   str(self.timestamp) +
                   str(self.data) +
                   str(self.previous_hash))
        return sha.hexdigest()
```

## The Genesis Block

In the blockchain, the first ever block is pretty special. Since it actually is the very first block of the blockchain.
So we usually import a block that has arbitrary data in it.

```python
import datetime as date

def create_genesis_block():
    """
    Creates the genesis block of the blockchain

    :returns: the first block
    """
    return Block(0, date.datetime.now(), "Hello, World!", "0")
```

## Next Block

To make a chain, we need to be able to build the next block!

```python
def next_block(last_block):
    """
    This creates the next block of the blockchain

    :returns: the next block
    """
    this_index = last_block.index + 1
    this_timestamp = date.datetime.now()
    this_data = "The Next Block " + str(this_index)
    this_hash = last_block.hash
    return Block(this_index, this_timestamp, this_data, this_hash)
```

# Create the blockchain!

```python
# Create the blockchain and add the genesis block
blockchain = [create_genesis_block()]
previous_block = blockchain[0]

# How many blocks should we add to the chain
# after the genesis block
num_of_blocks_to_add = 20

# Add blocks to the chain
for i in range(0, num_of_blocks_to_add):
    block_to_add = next_block(previous_block)
    blockchain.append(block_to_add)
    previous_block = block_to_add
    # Tell everyone about it!
    print "Block #{} has been added to the blockchain!".format(block_to_add.index)
    print "Hash: {}\n".format(block_to_add.hash) 
```

## To be continued ...

There is a part two of this blog. So I'll get there soon!
The link is : https://medium.com/crypto-currently/lets-make-the-tiniest-blockchain-bigger-ac360a328f4d
